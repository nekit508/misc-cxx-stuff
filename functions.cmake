function(serve_target target src_dir include_dir type)
    set(${target}_include_dir ${include_dir})
    file(GLOB_RECURSE ${target}_src_files "${src_dir}/**.*")
    file(GLOB_RECURSE ${target}_include_files "${include_dir}/**.*")
    target_sources(${target} PUBLIC ${${target}_src_files} ${${target}_include_files})

    target_include_directories(${target} PUBLIC ${${target}_include_dir})

    set_target_properties(${target} PROPERTIES LINKER_LANGUAGE ${type})
endfunction()

function(get_git_file repo branch file target secret)
    execute_process(COMMAND curl "https://raw.githubusercontent.com/${repo}/${branch}/${file}" -s -o "${target}" --create-dirs)
endfunction()
