/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function (config) {
    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';
    config.toolbar = 'MXICToolbar';

    config.toolbar_MXICToolbar =
    [
    ['Cut', 'Copy', 'Paste'],
    ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll'],
    ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
    ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'],
    '/',
    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'], ['Image'],
    ['Font', 'FontSize'],
    ['TextColor', 'BGColor'],
    ['Maximize', 'ShowBlock']
    ];
};
