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

$(".desktop-col .thumb").click(function () {
  $(".selected-div").attr("class", "thumb-div");
  $(".selected-img").attr("class", "thumb");

  $(this).parent().attr("class", "selected-div");
  $(this).attr("class", "thumb selected-img");

  var src = $(this).attr("src");
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

$(".close-button").click(function () {
  $(".modal").hide();
});

$(".mobile-slider-wrapper").slick({
  prevArrow: '<img class="previous" src="../assets/images/Left.svg" alt="">',
  nextArrow: '<img class="next" src="../assets/images/Right.svg" alt="">',
});
$(".model-slider-wrapper").slick({
  prevArrow: '<img class="previouss" src="../assets/images/Left.svg" alt="">',
  nextArrow: '<img class="nextt" src="../assets/images/Right.svg" alt="">',
  variableWidth: true,
});

$(".model-thumb").click(function () {
  $(".model-thumb").removeClass("selected-img");
  $(this).addClass("selected-img");
  var imgId = $(this).data("id");
  $(".model-slider-wrapper").slick("slickGoTo", imgId);
  $(".thumb-div").removeClass("selected-div");
  $(this).parents(".thumb-div").addClass("selected-div");
});

$(".model-slider-wrapper").on(
  "afterChange",
  function (event, slick, currentSlide, nextSlide) {
    $(".model-thumb").removeClass("selected-img");
    $(".model-thumb[data-id='" + currentSlide + "'").addClass("selected-img");
    $(".thumb-div").removeClass("selected-div");
    $(".model-thumb[data-id='" + currentSlide + "'")
      .parents(".thumb-div")
      .addClass("selected-div");
  }
);

if (window.innerWidth > 750) {
  var modal = document.getElementById("myModal");
  var btn = document.getElementById("myBtn");
  var span = document.getElementsByClassName("close")[0];

  btn.onclick = function () {
    modal.style.display = "block";
  };

  span.onclick = function () {
    modal.style.display = "none";
  };

  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  };
}
