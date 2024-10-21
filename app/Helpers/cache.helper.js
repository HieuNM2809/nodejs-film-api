const Redis = require('ioredis');
const redis = new Redis();

class CacheHelper {
    constructor() {}

    // Phương thức lấy dữ liệu từ cache, nếu không có sẽ lấy từ database
    static async getCachedData(key, model, query = {}, ttl = 3600) {
        try {
            const cachedData = await redis.get(key);
            if (cachedData) {
                return JSON.parse(cachedData);
            } else {
                const data = await model.findAll(query);
                await redis.set(key, JSON.stringify(data), 'EX', ttl); // Cache for ttl seconds
                return data;
            }
        } catch (error) {
            console.error(`Error with cache for key: ${key}`, error);
            throw error;
        }
    }

    // Phương thức xóa cache
    static async clearCache(key) {
        try {
            await redis.del(key);
        } catch (error) {
            console.error(`Error clearing cache for key: ${key}`, error);
            throw error;
        }
    }
}

module.exports = CacheHelper;
