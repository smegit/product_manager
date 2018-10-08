import BaseController from "controllers/base"

import $ from "jquery"

class Controller extends BaseController {
    call() {
        bindModelSelectionModal.call(this);
    }

    onSearchKeyUp() {
        console.log('onSearchKeyUp called');
    }

};

let bindModelSelectionModal = function () {
    this.root.find('.btn-model-selection').on('click', (e) => {
        console.log('bindModelSelectionModal123 called');
        e.preventDefault();

        let url = e.target.href

        $.ajax({
            url: url,
            method: 'get',
            dataType: "json"
        }).done((response) => {
            this.root.find('#modal-holder').html(response.html)
            this.root.find('#modal-holder .modal').modal('show')
        })

        //this.root.find('#modal-holder').html(response.html)
        //this.root.find('#modal-holder .modal').modal('show')
    })
}

export default Controller;