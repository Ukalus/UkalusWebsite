let points = [
    {
        x: 0,
        y: 0,
    },
    {
        x: 100,
        y: 100,
    }
];

let width = 400
let height = 400

let padding = 40



function setup() {
    createCanvas(width,height);

  }
  
  function draw() {
    background(220);
    for(i in points){
        ellipse(points[i].x, points[i].y,10,10)
    }
    
    
  }