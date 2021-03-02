console.log('welcome!')

specialBlock()

function specialBlock(){
  let list = document.querySelectorAll('.special-block-container')
  list.forEach(function(block){
    let copyBtn = document.createElement('button')
    copyBtn.classList.add('copy')
    block.appendChild(copyBtn)
  })
}