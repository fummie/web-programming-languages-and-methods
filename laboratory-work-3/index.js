'use strict';

const debugWindow = document.getElementsByClassName('debug-window').item(0);
const parentNode = document.getElementsByTagName('html').item(0);
const button = document.getElementsByTagName('button').item(0);

let nestingLevel = 0;
let indent = '';

const updateIndent = () => {
	indent = '';
	for (let i = 0; i < nestingLevel; i++)
		indent += '&nbsp&nbsp';
};

const createLog = (nodeName) => {
	debugWindow.innerHTML += `<p>${indent}${nodeName}</p>`;
	console.log(`Node name: ${nodeName}, Nesting level: ${nestingLevel - 1}`);
}

const dfs = (parentNode) => {
	if (parentNode != debugWindow && parentNode.nodeName != '#text') {
		nestingLevel++;
		updateIndent();
		createLog(parentNode.nodeName);
		if (parentNode.length != 0) {
			parentNode.childNodes.forEach(childNode => {
				dfs(childNode);
			});
		};
		nestingLevel--;
	};
};

button.onclick = () => {
	dfs(parentNode);
}
