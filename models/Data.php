<?php namespace Pensoft\Casestudies\Models;

use Model;
use System\Models\File;

/**
 * Model
 */
class Data extends Model
{
    use \October\Rain\Database\Traits\Validation;

    use \October\Rain\Database\Traits\SoftDelete;

    use \October\Rain\Database\Traits\Sortable;

    protected $casts = [
        'deleted_at' => 'datetime',
    ];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'pensoft_casestudies_data';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $attachOne = [
        'attachment' => File::class,
        'image' => File::class,
    ];

    public $attachMany = [
        'gallery' => File::class
    ];
}
