var spawn = require('child_process').spawnSync;
var options = {
    silent:true
}

console.log('adding files.....');
var result = spawn('git', ['add','.'], options);
console.log(result.output[1].toString());
console.log(result.output[2].toString());

console.log('commiting files...');
result =  spawn('git', ['commit','-am\'testingabc\''], options);
console.log(result.output[1].toString());
console.log(result.output[2].toString());

console.log('updating slides branch...');
result =  spawn('git', ['subtree', '--prefix', '_slides', 'push', 'origin', 'gh-pages'], options);
console.log(result.output[1].toString()); 
console.log(result.output[2].toString()); 
console.log('Done.');

 
  