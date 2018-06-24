//utils.js

/**
 * 简单的深拷贝实现
 * 这里obj中不能包含特殊类型值：undefined,NaN,function类型值
 * @param {object} obj
 */
export function deepClone(obj){
    return JSON.parse(JSON.stringify(obj));
}

/**
 * log 函数的二次封装，这里只是为了演示
 * @param {any} content
 */
export function log(content){
    console.log(`[Aryan log]: ${JSON.stringify(content)}`);
}