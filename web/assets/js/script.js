var clicked = true;
var amount = $(".amount").text();
amount = Number(amount);

$(".cart-btn").click(function () {
  if (clicked === true) {
    $(".cart").css("display", "block");
    clicked = false;
  } else if (clicked === false) {
    $(".cart").css("display", "none");
    clicked = true;
  }
  $(".main").click(function () {
    $(".cart").css("display", "none");
  });
});

$(".minus").click(function () {
  if (amount != 0) {
    $(".amount").text(--amount);
  }
});
$(".plus").click(function () {
  $(".amount").text(++amount);
});

$(".thumb").click(function () {
  $(".selected-div").attr("class", "thumb-div");
  $(".selected-img").attr("class", "thumb");

  $(this).parent().attr("class", "selected-div");
  $(this).attr("class", "thumb selected-img");

  var src = $(this).attr("src");
  //   var firstPart = src.slice(0, 22);
  //   var secondpart = src.slice(-4);
  //   var newSrc = firstPart + secondpart;

  $(".main-img").attr("src", src);
});

$(".buy-btn").click(function () {
  if (amount != 0) {
    $(".cart-p").css("display", "none");
    $(".cart-inside").css("display", "block");
    $(".price-sec").html(
      "$125 x " +
        amount +
        "  " +
        "<span class='blackk'>$" +
        125 * amount +
        "</span>"
    );
    $(".cart-number").text(amount);
  }
});
$(".cart-del").click(function () {
  $(".cart-p").css("display", "block");
  $(".cart-inside").css("display", "none");
  amount = 0;
  $(".amount").text("0");
  $(".cart-number").text("");
});

if (window.innerWidth < 750) {
  $("nav").attr("class", "navv navbar navbar-expand-md navbar-light");
}

// $(".next").click(function () {
//   var nummm = $(".main-img").attr("src").slice(21, 22);
//   console.log(nummm);
//   nummm = Number(nummm);
//   if (nummm != 4) {
//     $(".main-img").attr(
//       "src",
//       "../assets/images/image-product-" + ++nummm + ".png"
//     );
//   } else {
//     $(".main-img").attr("src", "../assets/images/image-product-1.png");
//   }
// });
// $(".previous").click(function () {
//   var nummm = $(".main-img").attr("src").slice(21, 22);
//   console.log(nummm);
//   nummm = Number(nummm);
//   if (nummm != 1) {
//     $(".main-img").attr(
//       "src",
//       "../assets/images/image-product-" + --nummm + ".png"
//     );
//   } else {
//     $(".main-img").attr("src", "../assets/images/image-product-4.png");
//   }
// });

$(".mobile-slider-wrapper").slick({
  prevArrow: '<img class="previous" src="../assets/images/Left.svg" alt="">',
  nextArrow: '<img class="next" src="../assets/images/Right.svg" alt="">',
});
$(".model-slider-wrapper").slick({
  prevArrow: '<img class="previouss" src="../assets/images/Left.svg" alt="">',
  nextArrow: '<img class="nextt" src="../assets/images/Right.svg" alt="">',
});

if (window.innerWidth > 750) {
  var modal = document.getElementById("myModal");

  // Get the button that opens the modal
  var btn = document.getElementById("myBtn");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];

  // When the user clicks on the button, open the modal

  btn.onclick = function () {
    modal.style.display = "block";
  };

  // When the user clicks on <span> (x), close the modal
  span.onclick = function () {
    modal.style.display = "none";
  };

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  };
}

// Get the modal

// $(".nextt").click(function () {
//   var nummm = $(".main-img").attr("src").slice(21, 22);
//   nummm = Number(nummm);
//   if (nummm != 4) {
//     $(".main-img").attr("src", "images/image-product-" + ++nummm + ".jpg");
//   } else {
//     $(".main-img").attr("src", "images/image-product-1.jpg");
//   }

//   $(".selected-div").attr("class", "thumb-div");
//   $(".selected-img").attr("class", "thumb");

//   if ($(".main-img").attr("src") === "images/image-product-1.jpg") {
//     $("#first").attr("class", "selected-img thumb");
//     $("#first").parent().attr("class", "selected-div");
//   } else if ($(".main-img").attr("src") === "images/image-product-2.jpg") {
//     $("#second").attr("class", "selected-img thumb");
//     $("#second").parent().attr("class", "selected-div");
//   } else if ($(".main-img").attr("src") === "images/image-product-3.jpg") {
//     $("#third").attr("class", "selected-img thumb");
//     $("#third").parent().attr("class", "selected-div");
//   } else if ($(".main-img").attr("src") === "images/image-product-4.jpg") {
//     $("#fourth").attr("class", "selected-img thumb");
//     $("#fourth").parent().attr("class", "selected-div");
//   }
// });
// $(".previouss").click(function () {
//   var nummm = $(".main-img").attr("src").slice(21, 22);
//   nummm = Number(nummm);
//   if (nummm != 1) {
//     $(".main-img").attr("src", "images/image-product-" + --nummm + ".jpg");
//   } else {
//     $(".main-img").attr("src", "images/image-product-4.jpg");
//   }

//   $(".selected-div").attr("class", "thumb-div");
//   $(".selected-img").attr("class", "thumb");

//   if ($(".main-img").attr("src") === "images/image-product-1.jpg") {
//     $("#first").attr("class", "selected-img thumb");
//     $("#first").parent().attr("class", "selected-div");
//   } else if ($(".main-img").attr("src") === "images/image-product-2.jpg") {
//     $("#second").attr("class", "selected-img thumb");
//     $("#second").parent().attr("class", "selected-div");
//   } else if ($(".main-img").attr("src") === "images/image-product-3.jpg") {
//     $("#third").attr("class", "selected-img thumb");
//     $("#third").parent().attr("class", "selected-div");
//   } else if ($(".main-img").attr("src") === "images/image-product-4.jpg") {
//     $("#fourth").attr("class", "selected-img thumb");
//     $("#fourth").parent().attr("class", "selected-div");
//   }
// });
