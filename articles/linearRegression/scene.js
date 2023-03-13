
const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(75, height / width, 0.1, 1000);
const geometry = new THREE.BoxGeometry();
const material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });
const cube = new THREE.Mesh(geometry, material);
let renderer;
scene.add(cube);
camera.position.z = 5;

const animate = () => {
  requestAnimationFrame(animate);
  cube.rotation.x += 0.01;
  cube.rotation.y += 0.01;
  renderer.render(scene, camera);
};

const resize = () => {
  renderer.setSize(width, height)
  camera.aspect = width / height;
  camera.updateProjectionMatrix();
};

const createScene = (el,width,height) => {
  renderer = new THREE.WebGLRenderer({ antialias: true, canvas: el });
  resize(width,height);
  animate();
}

window.addEventListener('resize', resize);

return createScene
