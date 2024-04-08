
let points = 1000;
let quantity =0
let done=0
let items_done=[];
 function add() {
    let pannerdiv=document.querySelector(".food-menu-item-panner")
    items_done.push(pannerdiv)
    console.log(items_done)
    quantity++;
    document.querySelector(".quantity-inp").innerHTML = quantity;
    let price = 100;
    points = points - price;
    document.querySelector(".pnts").innerHTML = points;
    done++;
    document.querySelector(".total").innerHTML = done;
     }

 function subtract() {
    let pannerdiv=document.querySelector(".food-menu-item-panner")
    items_done.pop(pannerdiv)
    console.log(items_done)

    if (quantity > 0) {
        quantity--;
        document.querySelector(".quantity-inp").innerHTML = quantity;
        let price = 100;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
    }
    if (done > 0) {
        done--;
        document.querySelector(".total").innerHTML = done;
    }
}


//second dish button

let quantityb = 0;

function addb() {
    quantityb++;
    document.querySelector(".quantity-inpb").innerHTML = quantityb;
    let price = 150;
    if (points >= price) {
        points = points - price;
        document.querySelector(".pnts").innerHTML = points;
        done++;
        document.querySelector(".total").innerHTML = done;
    } 
}

function subtractb() {
    if (quantityb > 0) {
        quantityb--;
        document.querySelector(".quantity-inpb").innerHTML = quantityb;
        let price = 150;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
        if (done > 0) {
            done--;
            document.querySelector(".total").innerHTML = done;
        }
    }
}


let quantityc = 0;

function addc() {
    quantityc++;
    document.querySelector(".quantity-inpc").innerHTML = quantityc;
    let price = 90;
    if (points >= price) {
        points = points - price;
        document.querySelector(".pnts").innerHTML = points;
        done++;
        document.querySelector(".total").innerHTML = done;
    } 
}

function subtractc() {
    if (quantityc > 0) {
        quantityc--;
        document.querySelector(".quantity-inpc").innerHTML = quantityc;
        let price = 90;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
        if (done > 0) {
            done--;
            document.querySelector(".total").innerHTML = done;
        }
    }
}

let quantityd = 0;

function addd() {
    quantityd++;
    document.querySelector(".quantity-inpd").innerHTML = quantityd;
    let price = 200;
    if (points >= price) {
        points = points - price;
        document.querySelector(".pnts").innerHTML = points;
        done++;
        document.querySelector(".total").innerHTML = done;
    } else {
        alert("Insufficient points");
    }
}

function subtractd() {
    if (quantityd > 0) {
        quantityd--;
        document.querySelector(".quantity-inpd").innerHTML = quantityd;
        let price = 200;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
        if (done > 0) {
            done--;
            document.querySelector(".total").innerHTML = done;
        }
    }
}


let quantitye = 0;

function adde() {
    quantitye++;
    document.querySelector(".quantity-inpe").innerHTML = quantitye;
    let price = 50;
    if (points >= price) {
        points = points - price;
        document.querySelector(".pnts").innerHTML = points;
        done++;
        document.querySelector(".total").innerHTML = done;
    } else {
        alert("Insufficient points");
    }
}

function subtractee() {
    if (quantitye > 0) {
        quantitye--;
        document.querySelector(".quantity-inpe").innerHTML = quantitye;
        let price = 50;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
        if (done > 0) {
            done--;
            document.querySelector(".total").innerHTML = done;
        }
    }
}

let quantityf = 0;

function addf() {
    quantityf++;
    document.querySelector(".quantity-inpf").innerHTML = quantityf;
    let price = 70;
    if (points >= price) {
        points = points - price;
        document.querySelector(".pnts").innerHTML = points;
        done++;
        document.querySelector(".total").innerHTML = done;
    } 
}

function subtractef() {
    if (quantityf > 0) {
        quantityf--;
        document.querySelector(".quantity-inpf").innerHTML = quantityf;
        let price = 70;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
        if (done > 0) {
            done--;
            document.querySelector(".total").innerHTML = done;
        }
    }
}
let quantityg = 0;

function addg() {
    quantityg++;
    document.querySelector(".quantity-inpg").innerHTML = quantityg;
    let price = 130;
    if (points >= price) {
        points = points - price;
        document.querySelector(".pnts").innerHTML = points;
        done++;
        document.querySelector(".total").innerHTML = done;
    } 
}

function subtracteg() {
    if (quantityg > 0) {
        quantityg--;
        document.querySelector(".quantity-inpg").innerHTML = quantityg;
        let price = 130;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
        if (done > 0) {
            done--;
            document.querySelector(".total").innerHTML = done;
        }
    }
}


let quantityh = 0;

function addh() {
    quantityh++;
    document.querySelector(".quantity-inph").innerHTML = quantityh;
    let price = 160;
    if (points >= price) {
        points = points - price;
        document.querySelector(".pnts").innerHTML = points;
        done++;
        document.querySelector(".total").innerHTML = done;
    } 
}

function subtracteh() {
    if (quantityh > 0) {
        quantityh--;
        document.querySelector(".quantity-inph").innerHTML = quantityh;
        let price = 160;
        points = points + price;
        document.querySelector(".pnts").innerHTML = points;
        if (done > 0) {
            done--;
            document.querySelector(".total").innerHTML = done;
        }
    }
}
// export { items_done };
