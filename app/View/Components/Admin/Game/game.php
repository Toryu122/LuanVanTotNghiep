<?php

namespace App\View\Components\Admin\Game;

use Illuminate\View\Component;

class game extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $Adgame;
    public function __construct($Adgame)
    {
        $this->Adgame = $Adgame;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.admin.game.game');
    }
}
