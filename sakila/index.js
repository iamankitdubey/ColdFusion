function mergeObj(arr) {
    const result = {};
    arr.forEach(obj => {
        for (const key in obj) {
            if (result[key]) {
                result[key].push(obj[key]);
            } else {
                result[key] = [obj[key]];
            }
        }
    });
    return result;
}
const input = [{a:1,b:2,c:3,d:4},{a:4,b:5,c:9,e:10}];
const output = mergeObj(input);
console.log(output);




