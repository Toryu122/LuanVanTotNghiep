@foreach ($genres as $item)
    <option id="{{ $item->id }}" value="{{ $item->name }}">{{ $item->name }}</option>
@endforeach
