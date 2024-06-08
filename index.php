<?php 
     include 'config.php';
     session_start();

 
     if(isset($_SESSION['user_id'])){
        $id=$_SESSION['user_id'];
     }
     

     if(isset($_GET['logout'])){
        session_destroy();
     }

    ?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="assets/css/styles.css">

        <!-- =====BOX ICONS===== -->
        <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>
                <!--===== SCROLL REVEAL =====-->
                <!-- <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
                <script src="https://unpkg.com/scrollreveal"></script> -->


        <title>home</title>
    </head>
    <body>
<!-- ---------------------------------------------home----------------------------------------- -->
<section class="home" id="home">

<div class="row">
    <div class="content" >
        <h3>Big Offer <span >20% off</span></h3>
        <img src="img/computers/2.jpg" alt="">
        <!-- <a href="#" class="btn">shop now</a> -->
    </div>
    <div class="swiper brands-slider">
        <div style="position:relative" class="swiper-wrapper">
            <img id="slideimage"  src="img/Brand/brand-1.png" alt="">
        </div>
        <!-- <img src="" class="stand" alt=""> -->
    </div>
</div>

</section>

       <!-- -------------------------------header--------------------------->
     <?php include 'header.php' ?>

            


            <section class="outbox" id="arrivals">
                <h1 class="heading"><span>featured items</span></h1>
                <div class="box-out">
                <?php  
                $select=mysqli_query($conn,"SELECT *FROM product_info ");
                
                if(mysqli_num_rows($select)>0){
                    while($row=mysqli_fetch_assoc($select)){
                    echo ' <div class="box">';


                    echo '
                    
                    <div class="inpic">
                    <img src="arrivals/'.$row['pImg'].'" alt="">
                    </div>';

                    echo '

                    <div class="intext">

                      <h1>'.$row['pName'].'</h1>
                      <p>'.$row['pDescription'].'</p>
                      <h1>Rs.'.$row['pPrice'].'</h1>
                      <input type="submit" name="submit" value="Buy" class="btn-buy" >    
                    
                    </div>';

                    
                    echo '</div>';
                    }
                }
                ?>
                </div>
            </section>     
            
            

            <br>
            <br>
            <br>
            <br>
            <br>
            <br>


        <!--===== FOOTER =====-->
<?php 
include 'footer.php';
?>
<!--         
        <script>
function first() {
  document.getElementById("slideimage").src = "img/Brand/brand-2.png";
}

function second() {
  document.getElementById("slideimage").src = "img/Brand/brand-3.png";
}

function third() {
  document.getElementById("slideimage").src = "img/Brand/brand-4.png";
}

function four() {
  document.getElementById("slideimage").src = "img/Brand/brand-5.jpg";
}

function five() {
  document.getElementById("slideimage").src = "img/Brand/brand-6.jpg";
}

function six() {
  document.getElementById("slideimage").src = "img/Brand/brand-1.png";
}

function rotateImages() {
  setInterval(function() {
    first();
    setTimeout(function() {
      second();
      setTimeout(function() {
        third();
        setTimeout(function() {
          four();
          setTimeout(function() {
            five();
            setTimeout(function() {
              six();
            }, 1000);
          }, 1000);
        }, 1000);
      }, 1000);
    }, 1000);
  }, 6000); // Rotate the image every 12 seconds
}

// Call the rotateImages function to start the rotation
rotateImages();
</script> -->




<script>
function changeImage() {
    var imageElement = document.getElementById("slideimage");
    var imageSources = ["img/Brand/brand-1.png", "img/Brand/brand-2.png", "img/Brand/brand-3.png", "img/Brand/brand-4.png", "img/Brand/brand-5.jpg", "img/Brand/brand-6.jpg"];
    var currentIndex = 0;

    function updateImage() {
        imageElement.src = imageSources[currentIndex];
        currentIndex = (currentIndex + 1) % imageSources.length;
    }

    setInterval(updateImage, 2000);
}

// Call the function to start changing the image
changeImage();
</script>


        <!--===== MAIN JS =====-->
        <script src="assets/js/main.js"></script>

         
    </body>
</html>
