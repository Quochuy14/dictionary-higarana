@extends('layout')
@section('welcome')
    <div>
        @if (\Session::has('infoDeleteWord'))
            <div id="alert-1"
                class="absolute top-10 right-10 flex items-center p-4 mb-4 text-blue-800 rounded-lg bg-blue-100 dark:bg-gray-800 dark:text-blue-400 z-50"
                role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none"
                    stroke="#0071ff" stroke-width="2.5" stroke-linecap="square" stroke-linejoin="arcs">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="12" y1="16" x2="12" y2="12"></line>
                    <line x1="12" y1="8" x2="12.01" y2="8"></line>
                </svg>
                <span class="sr-only">Info</span>
                <div class="pr-8 pl-4 text-sm font-medium">
                    {!! \Session::get('infoDeleteWord') !!}
                </div>
                <button type="button"
                    class="ml-auto -mx-1.5 -my-1.5  text-blue-500  rounded-lg focus:ring-2 focus:ring-blue-400 p-1.5 hover:bg-blue-200 inline-flex h-8 w-8 dark:bg-gray-800 dark:text-blue-400 dark:hover:bg-gray-700"
                    data-dismiss-target="#alert-1" aria-label="Close">
                    <span class="sr-only">Close</span>
                    <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                            d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                            clip-rule="evenodd"></path>
                    </svg>
                </button>
            </div>
        @endif

        <div class="relative overflow-x-auto shadow-xl sm:rounded-lg">
            <div class=" p-4">
                <div class="text-blue-500 text-3xl text-center font-semibold p-2 mb-4">
                    <a href="{{ route('welcome') }}" class="drop-shadow-xl shadow-black-600/50">TỪ ĐIỂN HIGARANA</a>
                </div>
                <div class="flex justify-between items-center">
                    <div class="relative">
                        <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                            <svg class="w-5 h-5 text-blue-600 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                    clip-rule="evenodd"></path>
                            </svg>
                        </div>
                        <input type="text" id="searchJP"
                            class=" bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-96 pl-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            placeholder="Nhập từ cần tìm">
                    </div>
                    <div class="flex items-center space-x-2">
                        <button data-modal-target="add_word_modal" data-modal-toggle="add_word_modal" id="addWord"
                            class="block text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                            type="button">
                            <div class="flex items-center space-x-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                    fill="none" stroke="#fff" stroke-width="2" stroke-linecap="square"
                                    stroke-linejoin="round">
                                    <line x1="12" y1="5" x2="12" y2="19"></line>
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                </svg>
                                <span>Thêm từ</span>
                            </div>
                        </button>
                        <a href="{{ route('training') }}"
                            class="block text-white bg-emerald-600 hover:bg-emerald-700 focus:ring-4 focus:outline-none focus:ring-emerald-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-emerald-600 dark:hover:bg-emerald-700 dark:focus:ring-emerald-800"
                            type="button">
                            <div class="flex items-center space-x-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                    fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="square"
                                    stroke-linejoin="arcs">
                                    <path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z"></path>
                                    <line x1="4" y1="22" x2="4" y2="15"></line>
                                </svg>
                                <span>Luyện tập</span>
                            </div>
                        </a>
                    </div>
                    <div id="add_word_modal" tabindex="-1" aria-hidden="true"
                        class="fixed top-0 left-0 right-0 z-50 hidden w-screen p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-modal md:h-full">
                        <div class="relative w-full h-full max-w-md md:h-auto">
                            <!-- Modal content -->
                            <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                <button type="button"
                                    class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white"
                                    data-modal-hide="add_word_modal">
                                    <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                            d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                            clip-rule="evenodd"></path>
                                    </svg>
                                    <span class="sr-only">Close modal</span>
                                </button>
                                <div class="px-4 py-6 lg:px-8">
                                    <h3
                                        class="mb-4 text-xl uppercase font-medium text-blue-500 text-center dark:text-white">
                                        Thêm từ mới
                                    </h3>
                                    <form class="space-y-6" action="{{ route('add_word') }}" method="POST">
                                        @csrf
                                        <div>
                                            <label for="inputBar"
                                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                                Tiếng Nhật</label>
                                            <input type="text" name="japanese"
                                                class="inputBar bg-gray-50 border border-gray-300 text-gray-900 text-base rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                required autofocus>

                                            <div class="mx-3 text-red-400">
                                                <input
                                                    class=" w-full m-0 p-0 border-none hidden bg-inherit duration-200 focus:border-none focus:outline-0"
                                                    disabled type="text" id="pronuciation">
                                                <input
                                                    class=" w-full m-0 p-0 border-none hidden bg-inherit duration-200 focus:border-none focus:outline-0"
                                                    readonly type="text" id="pronuciationCopy" name='pronuciation'>
                                            </div>
                                        </div>
                                        <div>
                                            <label for="english"
                                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                                Tiếng Anh</label>
                                            <input type="text" id="english" name="english"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                required>
                                        </div>
                                        <div>
                                            <label for="vietnamese"
                                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                                Tiếng Việt</label>
                                            <input type="text" id="vietnamese" name="vietnamese"
                                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                                required>
                                        </div>
                                        <button type="submit"
                                            class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                            Thêm
                                        </button>
                                        <div class="text-sm text-center font-medium text-gray-500 dark:text-gray-300">
                                            Copyright <a href="#"
                                                class="text-blue-700 hover:underline dark:text-blue-500">@quochuy14</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="px-4 mb-2 font-normal text-gray-600">
                Có <span class="text-blue-500 font-semibold" id=totalWord></span> từ trong điển
            </div>
            <div class="overflow-y-auto h-96">
                <table id="tableDictionary" class="w-full text-base text-left text-gray-500 dark:text-gray-400">
                    <thead
                        class="text-xs sticky top-0 z-30 text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" class=" px-4 py-2">
                                STT
                            </th>
                            <th scope="col" class="px-4 py-2">
                                Tiếng Nhật
                            </th>
                            <th scope="col" class="px-4 py-2">
                                <div class="flex justify-start items-center space-x-2">
                                    <span class="text-sm font-medium text-gray-900 dark:text-gray-300">
                                        Cách đọc
                                    </span>
                                    <label class="relative inline-flex items-center cursor-pointer">
                                        <input type="checkbox" id="toggleCheck" value="" class="sr-only peer"
                                            checked>
                                        <div id="togglePronuciation"
                                            class="w-7 h-3.5  bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 dark:peer-focus:ring-blue-800 rounded-full peer dark:bg-gray-700 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[1px] after:left-[3px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-3 after:w-3 after:transition-all dark:border-gray-600 peer-checked:bg-blue-600">
                                        </div>
                                    </label>
                                </div>

                            </th>
                            <th scope="col" class="px-4 py-2">
                                Tiếng Anh
                            </th>
                            <th scope="col" class="px-4 py-2">
                                Tiếng Việt
                            </th>
                            <th scope="col" class="px-4 py-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                    viewBox="0 0 24 24" fill="none" stroke="#000000" stroke-width="1.5"
                                    stroke-linecap="square" stroke-linejoin="arcs">
                                    <circle cx="12" cy="12" r="1"></circle>
                                    <circle cx="19" cy="12" r="1"></circle>
                                    <circle cx="5" cy="12" r="1"></circle>
                                </svg>
                            </th>
                        </tr>
                    </thead>
                    <tbody id="dataLoaded" class="hidden animate-fade">
                        @foreach ($dictionaries as $dictionary)
                            <tr
                                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                                <th class="py-2  px-4">
                                    <span class="stt">1</span>
                                </th>
                                <td scope="row"
                                    class="px-4 py-3 font-medium text-gray-900 dark:text-white whitespace-nowrap">
                                    <span id="valueSearch">{{ $dictionary->japanese }}</span>
                                </td>
                                <td class="px-4 py-3 ">
                                    <span class="tdPronuciation"> {{ $dictionary->pronuciation }}</span>
                                </td>
                                <td class="px-4 py-3 text-gray-700">
                                    <div class="flex  items-center space-x-2">
                                        <button class="btnSpeech" dataSet="{{ $dictionary->id }}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                viewBox="0 0 24 24" fill="none" stroke="#0071ff" stroke-width="1.5"
                                                stroke-linecap="square" stroke-linejoin="arcs">
                                                <polygon points="11 5 6 9 2 9 2 15 6 15 11 19 11 5"></polygon>
                                                <path d="M19.07 4.93a10 10 0 0 1 0 14.14M15.54 8.46a5 5 0 0 1 0 7.07">
                                                </path>
                                            </svg>
                                        </button>
                                        <span class="textSpeech capitalize-first"
                                            id="text_{{ $dictionary->id }}">{{ $dictionary->english }}</span>
                                    </div>
                                </td>
                                <td class="px-4 py-3 capitalize-first text-gray-700">
                                    {{ $dictionary->vietnamese }}
                                </td>
                                <td class="px-4 py-3 text-right">
                                    <div type="button" class="flex justify-start items-center space-x-3">
                                        {{-- <button data-modal-target="edit_word_modal_{{ $dictionary->id }}"
                                            data-modal-toggle="edit_word_modal_{{ $dictionary->id }}" --}}
                                        <button
                                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline opacity-70 hover:opacity-100">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                viewBox="0 0 24 24" fill="none" stroke="#0181ff" stroke-width="1.5"
                                                stroke-linecap="square" stroke-linejoin="arcs">
                                                <polygon points="14 2 18 6 7 17 3 17 3 13 14 2"></polygon>
                                                <line x1="3" y1="22" x2="21" y2="22">
                                                </line>
                                            </svg>
                                        </button>
                                        <a href="{{ route('delete_word', $dictionary->id) }}"
                                            class="font-medium text-red-600 dark:text-red-500 hover:underline opacity-70 hover:opacity-100">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                viewBox="0 0 24 24" fill="none" stroke="#ff0000" stroke-width="1.5"
                                                stroke-linecap="square" stroke-linejoin="arcs">
                                                <polyline points="3 6 5 6 21 6"></polyline>
                                                <path
                                                    d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2">
                                                </path>
                                                <line x1="10" y1="11" x2="10" y2="17">
                                                </line>
                                                <line x1="14" y1="11" x2="14" y2="17">
                                                </line>
                                            </svg>
                                        </a>
                                    </div>

                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="flex animate-pulse" id="skeletonTable">
                    <div class="w-full h-full p-8">
                        <ul class="mt-5 space-y-3">
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                            <li class="w-full h-4 bg-gray-200 rounded-md dark:bg-gray-700"></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>


        <p class="flex items-center justify-center space-x-1 mt-5 text-gray-400 text-center mb-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                stroke="#1563fb" stroke-width="2" stroke-linecap="square" stroke-linejoin="arcs">
                <polygon
                    points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2">
                </polygon>
            </svg>
            <span>
                Website được tạo ra bởi
            </span>
            <a class="text-blue-500 hover:underline" href="https://github.com/caoac14" target="_blank">
                Trương Quốc Huy
            </a>.
        </p>
    </div>
@endsection
