import './accordion/accordion.less';
import TabContent from './tab-content.json';

const doc = document;

doc.querySelector('#dynamic-content').addEventListener('click', event => {
  const target = event.target;
  if(target.className === 'tab-header') {
    const content = target.parentNode.querySelector('.content');
    if(!content.textContent.trim()) {
      content.textContent = TabContent[content.getAttribute('data-content-type')];
    }
  }
});