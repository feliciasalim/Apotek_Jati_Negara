function updateCartBadge() {
    $.ajax({
        type: 'GET',
        url: 'getCartCount.php',
        dataType: 'json',
        success: function (response) {
            if (response.status === 'success') {
                $('#cartBadge').text(response.cartCount);
            } else {
                console.error('Error updating cart badge: ' + response.message);
            }
        },
        error: function (xhr, status, error) {
            console.error('AJAX error: ' + status + ' ' + error);
        }
    });
    }

    $(document).ready(function () {
        updateCartBadge();
    });