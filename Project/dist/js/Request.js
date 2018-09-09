$(document).ready(function () {

    $('.custom-request-type').on('change', function () {

        var text = $(this).val();
        var other_box = $(".custom-request-other");
        var tittle = $(".custom-request-label-change-on-change-option");
        if (text == "Select" || text == "Cartoon" || text =="Games") {
            other_box.attr('disabled', 'true');
            other_box.val('Select');
            other_box.find('option').remove();
            tittle.html('Other');
        } else if (text == "Movies") {
            other_box.removeAttr('disabled');

            other_box.find('option').remove();

            other_box.append($('<option>', {
                text: 'Hollywood'
            }));
            other_box.append($('<option>', {
                text: 'Bollywood'
            }));
            other_box.append($('<option>', {
                text: 'Animated'
            }));
            other_box.append($('<option>', {
                text: 'Others'
            }));
            tittle.html('Movies');
        } else if (text == "Dramas") {
            other_box.removeAttr('disabled');

            other_box.find('option').remove();

            other_box.append($('<option>', {
                text: 'AAj Entertainment'
            }));
            other_box.append($('<option>', {
                text: 'A Plus Entertainment'
            }));
            other_box.append($('<option>', {
                text: 'ARY Digital'
            }));
            other_box.append($('<option>', {
                text: 'Express Entertainment'
            }));
            other_box.append($('<option>', {
                text: 'Geo Entertainment'
            }));
            other_box.append($('<option>', {
                text: 'PTV Home'
            }));
            other_box.append($('<option>', {
                text: 'TV One'
            }));
            other_box.append($('<option>', {
                text: 'Urdu One'
            }));
            other_box.append($('<option>', {
                text: 'ARY Zindagi'
            }));
            other_box.append($('<option>', {
                text: 'HUM'
            }));
            tittle.html('Channel');
        } else if (text == "Songs") {
            other_box.removeAttr('disabled');

            other_box.find('option').remove();

            other_box.append($('<option>', {
                text: 'Indian'
            }));
            other_box.append($('<option>', {
                text: 'Pakistani'
            }));
            other_box.append($('<option>', {
                text: 'English'
            }));
            other_box.append($('<option>', {
                text: 'Others'
            }));
            tittle.html('Categories');
        } 

    });

});
