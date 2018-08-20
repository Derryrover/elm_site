import './main.css';
import { Main } from './Main.elm';
import registerServiceWorker from './registerServiceWorker';

import {createMap} from "./LeafletImport.js";


Main.embed(document.getElementById('root'));

registerServiceWorker();

createMap();
