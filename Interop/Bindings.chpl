// Generated with c2chapel version 0.1.0

// Header given to c2chapel:
require "/Users/brandonneth/rebound/src/rebound.h";

require "/Users/brandonneth/rebound/src/tree.h";
// Note: Generated with fake std headers

use CTypes;
extern var reb_build_str : c_ptrConst(c_char);

extern var reb_version_str : c_ptrConst(c_char);

extern var reb_githash_str : c_ptrConst(c_char);

extern var reb_logo : c_ptr(c_ptrConst(c_char));

extern var reb_favicon_png : c_ptrConst(c_uchar);

extern var reb_favicon_len : c_uint;

extern var reb_max_messages_length : c_int;

extern var reb_N_max_messages : c_int;

//extern var reb_sigint : sig_atomic_t;


extern record reb_treecell {
  var x: real;
  var y: real;
  var z: real;
  var w: real;
  var m: real;
  var mx: real;
  var my: real;
  var mz: real;
  var oct : c_array(c_ptr(reb_treecell),8);
  var pt: int;
}







extern "struct reb_particle" record reb_particle {
  var x : c_double;
  var y : c_double;
  var z : c_double;
  var vx : c_double;
  var vy : c_double;
  var vz : c_double;
  var ax : c_double;
  var ay : c_double;
  var az : c_double;
  var m : c_double;
  var r : c_double;
  var last_collision : c_double;
  var c : c_ptr(reb_treecell);
  var hash : uint(32);
  var ap : c_ptr(void);
  var sim : c_ptr(reb_simulation);
}

extern "struct reb_vec3d" record reb_vec3d {
  var x : c_double;
  var y : c_double;
  var z : c_double;
}

extern "struct reb_mat4df" record reb_mat4df {
  var m : c_ptr(c_float);
}

extern "struct reb_vec6d" record reb_vec6d {
  var x : c_double;
  var y : c_double;
  var z : c_double;
  var vx : c_double;
  var vy : c_double;
  var vz : c_double;
}

extern "struct reb_rotation" record reb_rotation {
  var ix : c_double;
  var iy : c_double;
  var iz : c_double;
  var r : c_double;
}

extern "struct reb_collision" record reb_collision {
  var p1 : c_int;
  var p2 : c_int;
  var gb : reb_vec6d;
  var ri : c_int;
}

extern "struct reb_dp7" record reb_dp7 {
  var p0 : c_ptr(c_double);
  var p1 : c_ptr(c_double);
  var p2 : c_ptr(c_double);
  var p3 : c_ptr(c_double);
  var p4 : c_ptr(c_double);
  var p5 : c_ptr(c_double);
  var p6 : c_ptr(c_double);
}

extern "struct reb_integrator_ias15" record reb_integrator_ias15 {
  var epsilon : c_double;
  var min_dt : c_double;
  var adaptive_mode : c_uint;
  var iterations_max_exceeded : uint(64);
  var N_allocated : c_uint;
  var at : c_ptr(c_double);
  var x0 : c_ptr(c_double);
  var v0 : c_ptr(c_double);
  var a0 : c_ptr(c_double);
  var csx : c_ptr(c_double);
  var csv : c_ptr(c_double);
  var csa0 : c_ptr(c_double);
  var g : reb_dp7;
  var b : reb_dp7;
  var csb : reb_dp7;
  var e : reb_dp7;
  var br : reb_dp7;
  var er : reb_dp7;
  var map : c_ptr(c_int);
  var N_allocated_map : c_uint;
}

extern "struct reb_integrator_mercurius" record reb_integrator_mercurius {
  var L : c_fn_ptr;
  var r_crit_hill : c_double;
  var recalculate_coordinates_this_timestep : c_uint;
  var recalculate_r_crit_this_timestep : c_uint;
  var safe_mode : c_uint;
  var is_synchronized : c_uint;
  var mode : c_uint;
  var encounter_N : c_uint;
  var encounter_N_active : c_uint;
  var tponly_encounter : c_uint;
  var N_allocated : c_uint;
  var N_allocated_additional_forces : c_uint;
  var N_allocated_dcrit : c_uint;
  var dcrit : c_ptr(c_double);
  var particles_backup : c_ptr(reb_particle);
  var particles_backup_additional_forces : c_ptr(reb_particle);
  var encounter_map : c_ptr(c_int);
  var com_pos : reb_vec3d;
  var com_vel : reb_vec3d;
}

extern "struct reb_integrator_sei" record reb_integrator_sei {
  var OMEGA : c_double;
  var OMEGAZ : c_double;
  var lastdt : c_double;
  var sindt : c_double;
  var tandt : c_double;
  var sindtz : c_double;
  var tandtz : c_double;
}

extern "struct reb_integrator_trace" record reb_integrator_trace {
  var S : c_fn_ptr;
  var S_peri : c_fn_ptr;
  var peri_mode : c_int;
  var r_crit_hill : c_double;
  var peri_crit_eta : c_double;
  var peri_crit_fdot : c_double;
  var peri_crit_distance : c_double;
  var mode : c_int;
  var encounter_N : c_uint;
  var encounter_N_active : c_uint;
  var last_dt_ias15 : c_double;
  var N_allocated : c_uint;
  var N_allocated_additional_forces : c_uint;
  var tponly_encounter : c_uint;
  var particles_backup : c_ptr(reb_particle);
  var particles_backup_kepler : c_ptr(reb_particle);
  var particles_backup_additional_forces : c_ptr(reb_particle);
  var encounter_map : c_ptr(c_int);
  var com_pos : reb_vec3d;
  var com_vel : reb_vec3d;
  var current_Ks : c_ptr(c_int);
  var current_C : c_uint;
  var force_accept : c_uint;
}

// Fields omitted because one or more of the identifiers is a Chapel keyword
extern "struct reb_integrator_saba" record reb_integrator_saba {}

extern "struct reb_integrator_whfast" record reb_integrator_whfast {
  var corrector : c_uint;
  var corrector2 : c_uint;
  var kernel : c_int;
  var coordinates : c_int;
  var recalculate_coordinates_this_timestep : c_uint;
  var safe_mode : c_uint;
  var keep_unsynchronized : c_uint;
  var p_jh : c_ptr(reb_particle);
  var p_temp : c_ptr(reb_particle);
  var is_synchronized : c_uint;
  var N_allocated : c_uint;
  var N_allocated_tmp : c_uint;
  var timestep_warning : c_uint;
  var recalculate_coordinates_but_not_synchronized_warning : c_uint;
}

extern "struct reb_particle_avx512" record reb_particle_avx512 {
  var m : c_ptr(c_double);
  var x : c_ptr(c_double);
  var y : c_ptr(c_double);
  var z : c_ptr(c_double);
  var vx : c_ptr(c_double);
  var vy : c_ptr(c_double);
  var vz : c_ptr(c_double);
}

extern "struct reb_integrator_whfast512" record reb_integrator_whfast512 {
  var gr_potential : c_uint;
  var N_systems : c_uint;
  var keep_unsynchronized : c_uint;
  var is_synchronized : c_uint;
  var N_allocated : c_uint;
  var recalculate_constants : c_uint;
  var p_jh : c_ptr(reb_particle_avx512);
  var p_jh0 : c_ptr(reb_particle);
}

extern "struct reb_integrator_bs" record reb_integrator_bs {
  var eps_abs : c_double;
  var eps_rel : c_double;
  var min_dt : c_double;
  var max_dt : c_double;
  var nbody_ode : c_ptr(reb_ode);
  var sequence : c_ptr(c_int);
  var cost_per_step : c_ptr(c_int);
  var cost_per_time_unit : c_ptr(c_double);
  var optimal_step : c_ptr(c_double);
  var coeff : c_ptr(c_double);
  var dt_proposed : c_double;
  var first_or_last_step : c_int;
  var previous_rejected : c_int;
  var target_iter : c_int;
  var user_ode_needs_nbody : c_int;
}

// Enum: REB_EOS_TYPE
extern const REB_EOS_LF :c_int;
extern const REB_EOS_LF4 :c_int;
extern const REB_EOS_LF6 :c_int;
extern const REB_EOS_LF8 :c_int;
extern const REB_EOS_LF4_2 :c_int;
extern const REB_EOS_LF8_6_4 :c_int;
extern const REB_EOS_PLF7_6_4 :c_int;
extern const REB_EOS_PMLF4 :c_int;
extern const REB_EOS_PMLF6 :c_int;


extern "struct reb_integrator_eos" record reb_integrator_eos {
  var phi0 : c_int;
  var phi1 : c_int;
  var n : c_uint;
  var safe_mode : c_uint;
  var is_synchronized : c_uint;
}

extern "struct reb_particle_int" record reb_particle_int {
  var x : int(64);
  var y : int(64);
  var z : int(64);
  var vx : int(64);
  var vy : int(64);
  var vz : int(64);
}

extern "struct reb_integrator_janus" record reb_integrator_janus {
  var scale_pos : c_double;
  var scale_vel : c_double;
  var order : c_uint;
  var recalculate_integer_coordinates_this_timestep : c_uint;
  var p_int : c_ptr(reb_particle_int);
  var N_allocated : c_uint;
}

// Enum: REB_STATUS
extern const REB_STATUS_SINGLE_STEP :c_int;
extern const REB_STATUS_SCREENSHOT_READY :c_int;
extern const REB_STATUS_SCREENSHOT :c_int;
extern const REB_STATUS_PAUSED :c_int;
extern const REB_STATUS_LAST_STEP :c_int;
extern const REB_STATUS_RUNNING :c_int;
extern const REB_STATUS_SUCCESS :c_int;
extern const REB_STATUS_GENERIC_ERROR :c_int;
extern const REB_STATUS_NO_PARTICLES :c_int;
extern const REB_STATUS_ENCOUNTER :c_int;
extern const REB_STATUS_ESCAPE :c_int;
extern const REB_STATUS_USER :c_int;
extern const REB_STATUS_SIGINT :c_int;
extern const REB_STATUS_COLLISION :c_int;


// Fields omitted because one or more of the identifiers is a Chapel keyword
extern "struct reb_hash_pointer_pair" record reb_hash_pointer_pair {}

extern "struct reb_simulation" record reb_simulation {
  var t : c_double;
  var G : c_double;
  var softening : c_double;
  var dt : c_double;
  var dt_last_done : c_double;
  var steps_done : uint(64);
  var N : c_uint;
  var N_var : c_int;
  var N_var_config : c_uint;
  var var_config : c_ptr(reb_variational_configuration);
  var var_rescale_warning : c_int;
  var N_active : c_int;
  var testparticle_type : c_int;
  var testparticle_hidewarnings : c_int;
  var particle_lookup_table : c_ptr(reb_hash_pointer_pair);
  var hash_ctr : c_int;
  var N_lookup : c_int;
  var N_allocated_lookup : c_int;
  var N_allocated : c_uint;
  var particles : c_ptr(reb_particle);
  var gravity_cs : c_ptr(reb_vec3d);
  var N_allocated_gravity_cs : c_int;
  var tree_root : c_ptr(c_ptr(reb_treecell));
  var tree_needs_update : c_int;
  var opening_angle2 : c_double;
  var status : c_int;
  var exact_finish_time : c_int;
  var force_is_velocity_dependent : c_uint;
  var gravity_ignore_terms : c_uint;
  var output_timing_last : c_double;
  var save_messages : c_int;
  var messages : c_ptr(c_ptr(c_char));
  var exit_max_distance : c_double;
  var exit_min_distance : c_double;
  var usleep : c_double;
  var display_settings : c_ptr(reb_display_settings);
  var display_data : c_ptr(reb_display_data);
  var server_data : c_ptr(reb_server_data);
  var track_energy_offset : c_int;
  var energy_offset : c_double;
  var walltime : c_double;
  var walltime_last_step : c_double;
  var walltime_last_steps : c_double;
  var walltime_last_steps_sum : c_double;
  var walltime_last_steps_N : c_int;
  var python_unit_l : uint(32);
  var python_unit_m : uint(32);
  var python_unit_t : uint(32);
  var boxsize : reb_vec3d;
  var boxsize_max : c_double;
  var root_size : c_double;
  var N_root : c_int;
  var N_root_x : c_int;
  var N_root_y : c_int;
  var N_root_z : c_int;
  var N_ghost_x : c_int;
  var N_ghost_y : c_int;
  var N_ghost_z : c_int;
  var collision_resolve_keep_sorted : c_int;
  var collisions : c_ptr(reb_collision);
  var N_allocated_collisions : c_int;
  var minimum_collision_velocity : c_double;
  var collisions_plog : c_double;
  var max_radius0 : c_double;
  var max_radius1 : c_double;
  var collisions_log_n : int(64);
  var calculate_megno : c_int;
  var megno_Ys : c_double;
  var megno_Yss : c_double;
  var megno_cov_Yt : c_double;
  var megno_var_t : c_double;
  var megno_mean_t : c_double;
  var megno_mean_Y : c_double;
  var megno_n : int(64);
  var rand_seed : c_uint;
  var simulationarchive_version : c_int;
  var simulationarchive_auto_interval : c_double;
  var simulationarchive_auto_walltime : c_double;
  var simulationarchive_auto_step : uint(64);
  var simulationarchive_next : c_double;
  var simulationarchive_next_step : uint(64);
  var simulationarchive_filename : c_ptr(c_char);
  var collision : c_int;
  var integrator : c_int;
  var boundary : c_int;
  var gravity : c_int;
  var ri_sei : reb_integrator_sei;
  var ri_whfast : reb_integrator_whfast;
  var ri_whfast512 : reb_integrator_whfast512;
  var ri_saba : reb_integrator_saba;
  var ri_ias15 : reb_integrator_ias15;
  var ri_mercurius : reb_integrator_mercurius;
  var ri_trace : reb_integrator_trace;
  var ri_janus : reb_integrator_janus;
  var ri_eos : reb_integrator_eos;
  var ri_bs : reb_integrator_bs;
  var odes : c_ptr(c_ptr(reb_ode));
  var N_odes : c_int;
  var N_allocated_odes : c_int;
  var ode_warnings : c_int;
  var additional_forces : c_fn_ptr;
  var pre_timestep_modifications : c_fn_ptr;
  var post_timestep_modifications : c_fn_ptr;
  var heartbeat : c_fn_ptr;
  var key_callback : c_fn_ptr;
  var coefficient_of_restitution : c_fn_ptr;
  var collision_resolve : c_fn_ptr;
  var free_particle_ap : c_fn_ptr;
  var extras_cleanup : c_fn_ptr;
  var extras : c_ptr(void);
}

extern proc reb_simulation_create() : c_ptr(reb_simulation);

extern proc reb_simulation_create_from_file(filename : c_ptr(c_char), snapshot : int(64)) : c_ptr(reb_simulation);

extern proc reb_simulation_create_from_simulationarchive(ref sa : reb_simulationarchive, snapshot : int(64)) : c_ptr(reb_simulation);

extern proc reb_simulation_create_from_simulationarchive(sa : c_ptr(reb_simulationarchive), snapshot : int(64)) : c_ptr(reb_simulation);

extern proc reb_simulation_free(ref r : reb_simulation) : void;

extern proc reb_simulation_free(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_free_pointers(ref r : reb_simulation) : void;

extern proc reb_simulation_free_pointers(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_reset_function_pointers(ref r : reb_simulation) : c_int;

extern proc reb_simulation_reset_function_pointers(r : c_ptr(reb_simulation)) : c_int;

extern proc reb_simulation_reset_integrator(ref r : reb_simulation) : void;

extern proc reb_simulation_reset_integrator(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_copy(ref r : reb_simulation) : c_ptr(reb_simulation);

extern proc reb_simulation_copy(r : c_ptr(reb_simulation)) : c_ptr(reb_simulation);

extern proc reb_simulation_diff(ref r1 : reb_simulation, ref r2 : reb_simulation, output_option : c_int) : c_int;

extern proc reb_simulation_diff(r1 : c_ptr(reb_simulation), r2 : c_ptr(reb_simulation), output_option : c_int) : c_int;

extern proc reb_simulation_configure_box(ref r : reb_simulation, boxsize : c_double, N_root_x : c_int, N_root_y : c_int, N_root_z : c_int) : void;

extern proc reb_simulation_configure_box(r : c_ptr(reb_simulation), boxsize : c_double, N_root_x : c_int, N_root_y : c_int, N_root_z : c_int) : void;

extern proc reb_simulation_start_server(ref r : reb_simulation, port : c_int) : c_int;

extern proc reb_simulation_start_server(r : c_ptr(reb_simulation), port : c_int) : c_int;

extern proc reb_simulation_stop_server(ref r : reb_simulation) : void;

extern proc reb_simulation_stop_server(r : c_ptr(reb_simulation)) : void;

extern proc reb_exit(msg : c_ptrConst(c_char)) : void;

extern proc reb_simulation_stop(ref r : reb_simulation) : void;

extern proc reb_simulation_stop(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_warning(ref r : reb_simulation, msg : c_ptrConst(c_char)) : void;

extern proc reb_simulation_warning(r : c_ptr(reb_simulation), msg : c_ptrConst(c_char)) : void;

extern proc reb_simulation_error(ref r : reb_simulation, msg : c_ptrConst(c_char)) : void;

extern proc reb_simulation_error(r : c_ptr(reb_simulation), msg : c_ptrConst(c_char)) : void;

extern proc reb_simulation_save_to_file(ref r : reb_simulation, filename : c_ptrConst(c_char)) : void;

extern proc reb_simulation_save_to_file(r : c_ptr(reb_simulation), filename : c_ptrConst(c_char)) : void;

extern proc reb_simulation_save_to_file_interval(ref r : reb_simulation, filename : c_ptrConst(c_char), interval : c_double) : void;

extern proc reb_simulation_save_to_file_interval(r : c_ptr(reb_simulation), filename : c_ptrConst(c_char), interval : c_double) : void;

extern proc reb_simulation_save_to_file_walltime(ref r : reb_simulation, filename : c_ptrConst(c_char), walltime : c_double) : void;

extern proc reb_simulation_save_to_file_walltime(r : c_ptr(reb_simulation), filename : c_ptrConst(c_char), walltime : c_double) : void;

extern proc reb_simulation_save_to_file_step(ref r : reb_simulation, filename : c_ptrConst(c_char), step : uint(64)) : void;

extern proc reb_simulation_save_to_file_step(r : c_ptr(reb_simulation), filename : c_ptrConst(c_char), step : uint(64)) : void;

extern proc reb_simulation_save_to_stream(ref r : reb_simulation, ref bufp : c_ptr(c_char), ref sizep : c_size_t) : void;

extern proc reb_simulation_save_to_stream(r : c_ptr(reb_simulation), bufp : c_ptr(c_ptr(c_char)), sizep : c_ptr(c_size_t)) : void;

extern proc reb_simulation_output_timing(ref r : reb_simulation, tmax : c_double) : void;

extern proc reb_simulation_output_timing(r : c_ptr(reb_simulation), tmax : c_double) : void;

extern proc reb_simulation_output_orbits(ref r : reb_simulation, filename : c_ptr(c_char)) : void;

extern proc reb_simulation_output_orbits(r : c_ptr(reb_simulation), filename : c_ptr(c_char)) : void;

extern proc reb_simulation_output_ascii(ref r : reb_simulation, filename : c_ptr(c_char)) : void;

extern proc reb_simulation_output_ascii(r : c_ptr(reb_simulation), filename : c_ptr(c_char)) : void;

extern proc reb_simulation_output_velocity_dispersion(ref r : reb_simulation, filename : c_ptr(c_char)) : void;

extern proc reb_simulation_output_velocity_dispersion(r : c_ptr(reb_simulation), filename : c_ptr(c_char)) : void;

extern proc reb_simulation_output_check(ref r : reb_simulation, interval : c_double) : c_int;

extern proc reb_simulation_output_check(r : c_ptr(reb_simulation), interval : c_double) : c_int;

extern proc reb_simulation_output_screenshot(ref r : reb_simulation, filename : c_ptrConst(c_char)) : c_int;

extern proc reb_simulation_output_screenshot(r : c_ptr(reb_simulation), filename : c_ptrConst(c_char)) : c_int;

extern proc reb_simulation_step(ref r : reb_simulation) : void;

extern proc reb_simulation_step(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_steps(ref r : reb_simulation, N_steps : c_uint) : void;

extern proc reb_simulation_steps(r : c_ptr(reb_simulation), N_steps : c_uint) : void;

extern proc reb_simulation_integrate(ref r : reb_simulation, tmax : c_double) : c_int;

extern proc reb_simulation_integrate(r : c_ptr(reb_simulation), tmax : c_double) : c_int;

extern proc reb_simulation_synchronize(ref r : reb_simulation) : void;

extern proc reb_simulation_synchronize(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_move_to_hel(ref r : reb_simulation) : void;

extern proc reb_simulation_move_to_hel(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_move_to_com(ref r : reb_simulation) : void;

extern proc reb_simulation_move_to_com(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_imul(ref r : reb_simulation, scalar_pos : c_double, scalar_vel : c_double) : void;

extern proc reb_simulation_imul(r : c_ptr(reb_simulation), scalar_pos : c_double, scalar_vel : c_double) : void;

extern proc reb_simulation_iadd(ref r : reb_simulation, ref r2 : reb_simulation) : c_int;

extern proc reb_simulation_iadd(r : c_ptr(reb_simulation), r2 : c_ptr(reb_simulation)) : c_int;

extern proc reb_simulation_isub(ref r : reb_simulation, ref r2 : reb_simulation) : c_int;

extern proc reb_simulation_isub(r : c_ptr(reb_simulation), r2 : c_ptr(reb_simulation)) : c_int;

extern proc reb_simulation_energy(const ref r : reb_simulation) : c_double;

extern proc reb_simulation_energy(r : c_ptrConst(reb_simulation)) : c_double;

extern proc reb_simulation_angular_momentum(const ref r : reb_simulation) : reb_vec3d;

extern proc reb_simulation_angular_momentum(r : c_ptrConst(reb_simulation)) : reb_vec3d;

extern proc reb_simulation_com(ref r : reb_simulation) : reb_particle;

extern proc reb_simulation_com(r : c_ptr(reb_simulation)) : reb_particle;

extern proc reb_particle_com_of_pair(in p1 : reb_particle, in p2 : reb_particle) : reb_particle;

extern proc reb_simulation_com_range(ref r : reb_simulation, first : c_int, last : c_int) : reb_particle;

extern proc reb_simulation_com_range(r : c_ptr(reb_simulation), first : c_int, last : c_int) : reb_particle;

extern proc reb_simulation_add(ref r : reb_simulation, in pt : reb_particle) : void;

extern proc reb_simulation_add(r : c_ptr(reb_simulation), in pt : reb_particle) : void;

extern proc reb_simulation_add_fmt(ref r : reb_simulation, fmt : c_ptrConst(c_char), c__varargs ...) : void;

extern proc reb_simulation_add_fmt(r : c_ptr(reb_simulation), fmt : c_ptrConst(c_char), c__varargs ...) : void;

// Overload for empty varargs
extern proc reb_simulation_add_fmt(ref r : reb_simulation,fmt : c_ptrConst(c_char)) : void;

extern proc reb_particle_from_fmt(ref r : reb_simulation, fmt : c_ptrConst(c_char), c__varargs ...) : reb_particle;

extern proc reb_particle_from_fmt(r : c_ptr(reb_simulation), fmt : c_ptrConst(c_char), c__varargs ...) : reb_particle;

// Overload for empty varargs
extern proc reb_particle_from_fmt(ref r : reb_simulation,fmt : c_ptrConst(c_char)) : reb_particle;

extern proc reb_simulation_add_plummer(ref r : reb_simulation, _N : c_int, M : c_double, R : c_double) : void;

extern proc reb_simulation_add_plummer(r : c_ptr(reb_simulation), _N : c_int, M : c_double, R : c_double) : void;

extern proc reb_particle_from_orbit_err(G : c_double, in primary : reb_particle, m : c_double, a : c_double, e : c_double, i : c_double, Omega : c_double, omega : c_double, f : c_double, ref err : c_int) : reb_particle;

extern proc reb_particle_from_orbit_err(G : c_double, in primary : reb_particle, m : c_double, a : c_double, e : c_double, i : c_double, Omega : c_double, omega : c_double, f : c_double, err : c_ptr(c_int)) : reb_particle;

extern proc reb_particle_from_orbit(G : c_double, in primary : reb_particle, m : c_double, a : c_double, e : c_double, i : c_double, Omega : c_double, omega : c_double, f : c_double) : reb_particle;

extern proc reb_particle_from_pal(G : c_double, in primary : reb_particle, m : c_double, a : c_double, lambda_arg : c_double, k : c_double, h : c_double, ix : c_double, iy : c_double) : reb_particle;

extern proc reb_particle_nan() : reb_particle;

extern proc reb_simulation_remove_all_particles(ref r : reb_simulation) : void;

extern proc reb_simulation_remove_all_particles(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_remove_particle(ref r : reb_simulation, index_arg : c_int, keep_sorted : c_int) : c_int;

extern proc reb_simulation_remove_particle(r : c_ptr(reb_simulation), index_arg : c_int, keep_sorted : c_int) : c_int;

extern proc reb_simulation_remove_particle_by_hash(ref r : reb_simulation, hash : uint(32), keep_sorted : c_int) : c_int;

extern proc reb_simulation_remove_particle_by_hash(r : c_ptr(reb_simulation), hash : uint(32), keep_sorted : c_int) : c_int;

extern proc reb_simulation_particle_by_hash(ref r : reb_simulation, hash : uint(32)) : c_ptr(reb_particle);

extern proc reb_simulation_particle_by_hash(r : c_ptr(reb_simulation), hash : uint(32)) : c_ptr(reb_particle);

extern proc reb_simulation_particle_by_hash_mpi(ref r : reb_simulation, hash : uint(32)) : reb_particle;

extern proc reb_simulation_particle_by_hash_mpi(r : c_ptr(reb_simulation), hash : uint(32)) : reb_particle;

extern proc reb_simulation_particle_index(ref p : reb_particle) : c_int;

extern proc reb_simulation_particle_index(p : c_ptr(reb_particle)) : c_int;

extern proc reb_particle_isub(ref p1 : reb_particle, ref p2 : reb_particle) : void;

extern proc reb_particle_isub(p1 : c_ptr(reb_particle), p2 : c_ptr(reb_particle)) : void;

extern proc reb_particle_iadd(ref p1 : reb_particle, ref p2 : reb_particle) : void;

extern proc reb_particle_iadd(p1 : c_ptr(reb_particle), p2 : c_ptr(reb_particle)) : void;

extern proc reb_particle_imul(ref p1 : reb_particle, value : c_double) : void;

extern proc reb_particle_imul(p1 : c_ptr(reb_particle), value : c_double) : void;

extern proc reb_particle_distance(ref p1 : reb_particle, ref p2 : reb_particle) : c_double;

extern proc reb_particle_distance(p1 : c_ptr(reb_particle), p2 : c_ptr(reb_particle)) : c_double;

extern proc reb_particle_diff(in p1 : reb_particle, in p2 : reb_particle) : c_int;

extern proc reb_simulation_init_megno(ref r : reb_simulation) : void;

extern proc reb_simulation_init_megno(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_init_megno_seed(ref r : reb_simulation, seed : c_uint) : void;

extern proc reb_simulation_init_megno_seed(r : c_ptr(reb_simulation), seed : c_uint) : void;

extern proc reb_simulation_megno(ref r : reb_simulation) : c_double;

extern proc reb_simulation_megno(r : c_ptr(reb_simulation)) : c_double;

extern proc reb_simulation_lyapunov(ref r : reb_simulation) : c_double;

extern proc reb_simulation_lyapunov(r : c_ptr(reb_simulation)) : c_double;

extern proc reb_integrator_mercurius_L_mercury(const ref r : reb_simulation, d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_mercurius_L_mercury(r : c_ptrConst(reb_simulation), d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_mercurius_L_infinity(const ref r : reb_simulation, d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_mercurius_L_infinity(r : c_ptrConst(reb_simulation), d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_mercurius_L_C4(const ref r : reb_simulation, d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_mercurius_L_C4(r : c_ptrConst(reb_simulation), d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_mercurius_L_C5(const ref r : reb_simulation, d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_mercurius_L_C5(r : c_ptrConst(reb_simulation), d : c_double, dcrit : c_double) : c_double;

extern proc reb_integrator_trace_switch_peri_default(ref r : reb_simulation, j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_peri_default(r : c_ptr(reb_simulation), j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_peri_fdot(ref r : reb_simulation, j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_peri_fdot(r : c_ptr(reb_simulation), j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_peri_distance(ref r : reb_simulation, j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_peri_distance(r : c_ptr(reb_simulation), j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_peri_none(ref r : reb_simulation, j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_peri_none(r : c_ptr(reb_simulation), j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_default(ref r : reb_simulation, i : c_uint, j : c_uint) : c_int;

extern proc reb_integrator_trace_switch_default(r : c_ptr(reb_simulation), i : c_uint, j : c_uint) : c_int;

extern proc reb_collision_resolve_halt(ref r : reb_simulation, in c : reb_collision) : c_int;

extern proc reb_collision_resolve_halt(r : c_ptr(reb_simulation), in c : reb_collision) : c_int;

extern proc reb_collision_resolve_hardsphere(ref r : reb_simulation, in c : reb_collision) : c_int;

extern proc reb_collision_resolve_hardsphere(r : c_ptr(reb_simulation), in c : reb_collision) : c_int;

extern proc reb_collision_resolve_merge(ref r : reb_simulation, in c : reb_collision) : c_int;

extern proc reb_collision_resolve_merge(r : c_ptr(reb_simulation), in c : reb_collision) : c_int;

extern proc reb_random_uniform(ref r : reb_simulation, min : c_double, max : c_double) : c_double;

extern proc reb_random_uniform(r : c_ptr(reb_simulation), min : c_double, max : c_double) : c_double;

extern proc reb_random_powerlaw(ref r : reb_simulation, min : c_double, max : c_double, slope : c_double) : c_double;

extern proc reb_random_powerlaw(r : c_ptr(reb_simulation), min : c_double, max : c_double, slope : c_double) : c_double;

extern proc reb_random_normal(ref r : reb_simulation, variance : c_double) : c_double;

extern proc reb_random_normal(r : c_ptr(reb_simulation), variance : c_double) : c_double;

extern proc reb_random_rayleigh(ref r : reb_simulation, sigma : c_double) : c_double;

extern proc reb_random_rayleigh(r : c_ptr(reb_simulation), sigma : c_double) : c_double;

extern proc reb_hash(str : c_ptrConst(c_char)) : uint(32);

extern proc reb_mod2pi(f : c_double) : c_double;

extern proc reb_M_to_f(e : c_double, M : c_double) : c_double;

extern proc reb_E_to_f(e : c_double, M : c_double) : c_double;

extern proc reb_M_to_E(e : c_double, M : c_double) : c_double;

extern "struct reb_simulationarchive" record reb_simulationarchive {
  var inf : c_ptr(c_FILE);
  var filename : c_ptr(c_char);
  var version : c_int;
  var auto_interval : c_double;
  var auto_walltime : c_double;
  var auto_step : uint(64);
  var nblobs : int(64);
  var offset : c_ptr(uint(64));
  var t : c_ptr(c_double);
}

extern proc reb_simulationarchive_create_from_file(filename : c_ptrConst(c_char)) : c_ptr(reb_simulationarchive);

extern proc reb_simulationarchive_free(ref sa : reb_simulationarchive) : void;

extern proc reb_simulationarchive_free(sa : c_ptr(reb_simulationarchive)) : void;

extern "struct reb_orbit" record reb_orbit {
  var d : c_double;
  var v : c_double;
  var h : c_double;
  var P : c_double;
  var n : c_double;
  var a : c_double;
  var e : c_double;
  var inc : c_double;
  var Omega : c_double;
  var omega : c_double;
  var pomega : c_double;
  var f : c_double;
  var M : c_double;
  var l : c_double;
  var theta : c_double;
  var T : c_double;
  var rhill : c_double;
  var pal_h : c_double;
  var pal_k : c_double;
  var pal_ix : c_double;
  var pal_iy : c_double;
  var hvec : reb_vec3d;
  var evec : reb_vec3d;
}

extern proc reb_orbit_from_particle(G : c_double, in p : reb_particle, in primary : reb_particle) : reb_orbit;

// Fields omitted because one or more of the identifiers is a Chapel keyword
extern "struct reb_ode" record reb_ode {}

extern proc reb_ode_create(ref r : reb_simulation, length : c_uint) : c_ptr(reb_ode);

extern proc reb_ode_create(r : c_ptr(reb_simulation), length : c_uint) : c_ptr(reb_ode);

extern proc reb_ode_free(ref ode : reb_ode) : void;

extern proc reb_ode_free(ode : c_ptr(reb_ode)) : void;

// Fields omitted because one or more of the identifiers is a Chapel keyword
extern "struct reb_variational_configuration" record reb_variational_configuration {}

extern proc reb_simulation_add_variation_1st_order(ref r : reb_simulation, testparticle : c_int) : c_int;

extern proc reb_simulation_add_variation_1st_order(r : c_ptr(reb_simulation), testparticle : c_int) : c_int;

extern proc reb_simulation_add_variation_2nd_order(ref r : reb_simulation, testparticle : c_int, index_1st_order_a : c_int, index_1st_order_b : c_int) : c_int;

extern proc reb_simulation_add_variation_2nd_order(r : c_ptr(reb_simulation), testparticle : c_int, index_1st_order_a : c_int, index_1st_order_b : c_int) : c_int;

extern proc reb_simulation_rescale_var(ref r : reb_simulation) : void;

extern proc reb_simulation_rescale_var(r : c_ptr(reb_simulation)) : void;

extern proc reb_particle_derivative_lambda(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_h(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_k(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_k_k(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_h_h(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_lambda_lambda(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_k_lambda(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_h_lambda(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_k_h(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_a(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_ix(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_ix_ix(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_iy_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_k_ix(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_h_ix(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_lambda_ix(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_lambda_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_h_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_k_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_ix_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_ix(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_lambda(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_h(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_k(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_a(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_lambda(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_h(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_k(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_ix(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_iy(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_m(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_e(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_e_e(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_inc(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_inc_inc(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_Omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_Omega_Omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_omega_omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_f_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_e(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_inc(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_Omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_a_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_e_inc(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_e_Omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_e_omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_e_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_e(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_inc_Omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_inc_omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_inc_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_inc(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_omega_Omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_Omega_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_Omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_omega_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_omega(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_particle_derivative_m_f(G : c_double, in primary : reb_particle, in po : reb_particle) : reb_particle;

extern proc reb_rotation_inverse(in q : reb_rotation) : reb_rotation;

extern proc reb_rotation_mul(in p : reb_rotation, in q : reb_rotation) : reb_rotation;

extern proc reb_rotation_identity() : reb_rotation;

extern proc reb_rotation_normalize(in q : reb_rotation) : reb_rotation;

extern proc reb_rotation_conjugate(in q : reb_rotation) : reb_rotation;

extern proc reb_rotation_init_angle_axis(angle : c_double, in axis : reb_vec3d) : reb_rotation;

extern proc reb_rotation_init_from_to(in from : reb_vec3d, in to : reb_vec3d) : reb_rotation;

extern proc reb_rotation_init_orbit(Omega : c_double, inc : c_double, omega : c_double) : reb_rotation;

extern proc reb_rotation_init_to_new_axes(in newz : reb_vec3d, in newx : reb_vec3d) : reb_rotation;

extern proc reb_rotation_slerp(in q1 : reb_rotation, in q2 : reb_rotation, t : c_double) : reb_rotation;

extern proc reb_tools_spherical_to_xyz(mag : c_double, theta : c_double, phi : c_double) : reb_vec3d;

extern proc reb_tools_xyz_to_spherical(in xyz : reb_vec3d, ref mag : c_double, ref theta : c_double, ref phi : c_double) : void;

extern proc reb_tools_xyz_to_spherical(in xyz : reb_vec3d, mag : c_ptr(c_double), theta : c_ptr(c_double), phi : c_ptr(c_double)) : void;

extern proc reb_vec3d_mul(in v : reb_vec3d, s : c_double) : reb_vec3d;

extern proc reb_vec3d_add(in v : reb_vec3d, in w : reb_vec3d) : reb_vec3d;

extern proc reb_vec3d_length_squared(in v : reb_vec3d) : c_double;

extern proc reb_vec3d_dot(in a : reb_vec3d, in b : reb_vec3d) : c_double;

extern proc reb_vec3d_cross(in a : reb_vec3d, in b : reb_vec3d) : reb_vec3d;

extern proc reb_vec3d_normalize(in v : reb_vec3d) : reb_vec3d;

extern proc reb_vec3d_rotate(in v : reb_vec3d, in q : reb_rotation) : reb_vec3d;

extern proc reb_vec3d_irotate(ref v : reb_vec3d, in q : reb_rotation) : void;

extern proc reb_vec3d_irotate(v : c_ptr(reb_vec3d), in q : reb_rotation) : void;

extern proc reb_particle_irotate(ref p : reb_particle, in q : reb_rotation) : void;

extern proc reb_particle_irotate(p : c_ptr(reb_particle), in q : reb_rotation) : void;

extern proc reb_simulation_irotate(ref sim : reb_simulation, in q : reb_rotation) : void;

extern proc reb_simulation_irotate(sim : c_ptr(reb_simulation), in q : reb_rotation) : void;

extern proc reb_rotation_to_orbital(in q : reb_rotation, ref Omega : c_double, ref inc : c_double, ref omega : c_double) : void;

extern proc reb_rotation_to_orbital(in q : reb_rotation, Omega : c_ptr(c_double), inc : c_ptr(c_double), omega : c_ptr(c_double)) : void;

extern "struct reb_orbit_opengl" record reb_orbit_opengl {
  var x : c_float;
  var y : c_float;
  var z : c_float;
  var a : c_float;
  var e : c_float;
  var f : c_float;
  var omega : c_float;
  var Omega : c_float;
  var inc : c_float;
}

extern "struct reb_vec3df" record reb_vec3df {
  var x : c_float;
  var y : c_float;
  var z : c_float;
}

extern "struct reb_vec4df" record reb_vec4df {
  var x : c_float;
  var y : c_float;
  var z : c_float;
  var r : c_float;
}

extern "struct reb_server_data" record reb_server_data {
  var r : c_ptr(reb_simulation);
  var screenshot : c_ptr(void);
  var N_screenshot : c_size_t;
  var status_before_screenshot : c_int;
  var port : c_int;
  var need_copy : c_int;
  var ready : c_int;
}

extern "struct reb_display_settings" record reb_display_settings {
  var view : reb_mat4df;
  var spheres : c_int;
  var pause : c_int;
  var wire : c_int;
  var breadcrumbs : c_uint;
  var onscreentext : c_int;
  var onscreenhelp : c_int;
  var multisample : c_int;
  var ghostboxes : c_int;
  var reference : c_int;
}

// Anonymous union or struct was encountered within and skipped.
extern "struct reb_display_data" record reb_display_data {
  var s : reb_display_settings;
  var r : c_ptr(reb_simulation);
  var r_copy : c_ptr(reb_simulation);
  var screenshot : c_ptr(void);
  var particle_data : c_ptr(reb_vec4df);
  var orbit_data : c_ptr(reb_orbit_opengl);
  var N_allocated : uint(64);
  var mouse_x : c_double;
  var mouse_y : c_double;
  var retina : c_double;
  var take_one_screenshot : c_int;
  var need_copy : c_int;
  //var mutex : pthread_mutex_t;
  //var compute_thread : pthread_t;
  var breadcrumb_last_steps_done : uint(64);
  var breadcrumb_N_allocated : c_uint;
  var breadcrumb_current_index : c_uint;
  var mouse_action : c_uint;
  var key_mods : c_uint;
  var particle_buffer : c_uint;
  var particle_buffer_current : c_uint;
  var orbit_buffer : c_uint;
  var orbit_buffer_current : c_uint;
  var window : c_ptr(void);
}

extern proc reb_simulation_add_display_settings(ref r : reb_simulation) : void;

extern proc reb_simulation_add_display_settings(r : c_ptr(reb_simulation)) : void;

extern proc reb_mat4df_identity() : reb_mat4df;

extern proc reb_mat4df_scale(in m : reb_mat4df, x : c_float, y : c_float, z : c_float) : reb_mat4df;

extern proc reb_mat4df_print(in m : reb_mat4df) : void;

extern proc reb_mat4df_eq(in A : reb_mat4df, in B : reb_mat4df) : c_int;

extern proc reb_mat4df_get_scale(in m : reb_mat4df) : reb_vec3df;

extern proc reb_mat4df_translate(in m : reb_mat4df, x : c_float, y : c_float, z : c_float) : reb_mat4df;

extern proc reb_mat4df_multiply(in A : reb_mat4df, in B : reb_mat4df) : reb_mat4df;

extern proc reb_rotation_to_mat4df(in A : reb_rotation) : reb_mat4df;

extern proc reb_mat4df_ortho(l : c_float, r : c_float, b : c_float, t : c_float, n : c_float, f : c_float) : reb_mat4df;

extern proc reb_sigint_handler(signum : c_int) : void;

// Fields omitted because one or more of the identifiers is a Chapel keyword
extern "struct reb_simulationarchive_blob" record reb_simulationarchive_blob {}

// Fields omitted because one or more of the identifiers is a Chapel keyword
extern "struct reb_binary_field_descriptor" record reb_binary_field_descriptor {}

extern var reb_binary_field_descriptor_list : c_ptrConst(reb_binary_field_descriptor);

extern proc reb_binary_field_descriptor_for_type(type_arg : c_int) : reb_binary_field_descriptor;

extern proc reb_binary_field_descriptor_for_name(name : c_ptrConst(c_char)) : reb_binary_field_descriptor;

// Enum: reb_simulation_binary_error_codes
extern const REB_SIMULATION_BINARY_WARNING_NONE :c_int;
extern const REB_SIMULATION_BINARY_ERROR_NOFILE :c_int;
extern const REB_SIMULATION_BINARY_WARNING_VERSION :c_int;
extern const REB_SIMULATION_BINARY_WARNING_POINTERS :c_int;
extern const REB_SIMULATION_BINARY_WARNING_PARTICLES :c_int;
extern const REB_SIMULATION_BINARY_ERROR_FILENOTOPEN :c_int;
extern const REB_SIMULATION_BINARY_ERROR_OUTOFRANGE :c_int;
extern const REB_SIMULATION_BINARY_ERROR_SEEK :c_int;
extern const REB_SIMULATION_BINARY_WARNING_FIELD_UNKOWN :c_int;
extern const REB_SIMULATION_BINARY_ERROR_INTEGRATOR :c_int;
extern const REB_SIMULATION_BINARY_WARNING_CORRUPTFILE :c_int;
extern const REB_SIMULATION_BINARY_ERROR_OLD :c_int;


// Fields omitted because one or more of the identifiers is a Chapel keyword
extern "struct reb_binary_field" record reb_binary_field {}

extern proc reb_simulation_init(ref r : reb_simulation) : void;

extern proc reb_simulation_init(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_update_acceleration(ref r : reb_simulation) : void;

extern proc reb_simulation_update_acceleration(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_update_tree(ref r : reb_simulation) : void;

extern proc reb_simulation_update_tree(r : c_ptr(reb_simulation)) : void;

extern proc reb_simulation_get_next_message(ref r : reb_simulation, buf : c_ptr(c_char)) : c_int;

extern proc reb_simulation_get_next_message(r : c_ptr(reb_simulation), buf : c_ptr(c_char)) : c_int;

extern proc reb_check_fp_contract() : c_int;

extern proc reb_simulation_struct_size() : c_size_t;

extern proc reb_simulation_diff_char(ref r1 : reb_simulation, ref r2 : reb_simulation) : c_ptr(c_char);

extern proc reb_simulation_diff_char(r1 : c_ptr(reb_simulation), r2 : c_ptr(reb_simulation)) : c_ptr(c_char);

extern proc reb_simulation_set_collision_resolve(ref r : reb_simulation, resolve : c_fn_ptr) : void;

extern proc reb_simulation_set_collision_resolve(r : c_ptr(reb_simulation), resolve : c_fn_ptr) : void;

extern proc reb_simulation_get_serialized_particle_data(ref r : reb_simulation, ref hash : uint(32), ref m : c_double, ref radius : c_double, ref xyz : c_ptr(c_double), ref vxvyvz : c_ptr(c_double), ref xyzvxvyvz : c_ptr(c_double)) : void;

extern proc reb_simulation_get_serialized_particle_data(r : c_ptr(reb_simulation), hash : c_ptr(uint(32)), m : c_ptr(c_double), radius : c_ptr(c_double), xyz : c_ptr(c_ptr(c_double)), vxvyvz : c_ptr(c_ptr(c_double)), xyzvxvyvz : c_ptr(c_ptr(c_double))) : void;

extern proc reb_simulation_set_serialized_particle_data(ref r : reb_simulation, ref hash : uint(32), ref m : c_double, ref radius : c_double, ref xyz : c_ptr(c_double), ref vxvyvz : c_ptr(c_double), ref xyzvxvyvz : c_ptr(c_double)) : void;

extern proc reb_simulation_set_serialized_particle_data(r : c_ptr(reb_simulation), hash : c_ptr(uint(32)), m : c_ptr(c_double), radius : c_ptr(c_double), xyz : c_ptr(c_ptr(c_double)), vxvyvz : c_ptr(c_ptr(c_double)), xyzvxvyvz : c_ptr(c_ptr(c_double))) : void;

extern proc reb_simulation_output_free_stream(buf : c_ptr(c_char)) : void;

extern proc reb_simulation_jacobi_com(ref p : reb_particle) : reb_particle;

extern proc reb_simulation_jacobi_com(p : c_ptr(reb_particle)) : reb_particle;

extern proc reb_orbit_from_particle_err(G : c_double, in p : reb_particle, in primary : reb_particle, ref err : c_int) : reb_orbit;

extern proc reb_orbit_from_particle_err(G : c_double, in p : reb_particle, in primary : reb_particle, err : c_ptr(c_int)) : reb_orbit;

extern proc reb_simulation_create_from_simulationarchive_with_messages(ref r : reb_simulation, ref sa : reb_simulationarchive, snapshot : int(64), ref warnings : c_int) : void;

extern proc reb_simulation_create_from_simulationarchive_with_messages(r : c_ptr(reb_simulation), sa : c_ptr(reb_simulationarchive), snapshot : int(64), warnings : c_ptr(c_int)) : void;

extern proc reb_simulation_copy_with_messages(ref r_copy : reb_simulation, ref r : reb_simulation, ref warnings : c_int) : void;

extern proc reb_simulation_copy_with_messages(r_copy : c_ptr(reb_simulation), r : c_ptr(reb_simulation), warnings : c_ptr(c_int)) : void;

extern proc reb_simulationarchive_init_from_buffer_with_messages(ref sa : reb_simulationarchive, buf : c_ptr(c_char), size : c_size_t, ref sa_index : reb_simulationarchive, ref warnings : c_int) : void;

extern proc reb_simulationarchive_init_from_buffer_with_messages(sa : c_ptr(reb_simulationarchive), buf : c_ptr(c_char), size : c_size_t, sa_index : c_ptr(reb_simulationarchive), warnings : c_ptr(c_int)) : void;

extern proc reb_simulationarchive_create_from_file_with_messages(ref sa : reb_simulationarchive, filename : c_ptrConst(c_char), ref sa_index : reb_simulationarchive, ref warnings : c_int) : void;

extern proc reb_simulationarchive_create_from_file_with_messages(sa : c_ptr(reb_simulationarchive), filename : c_ptrConst(c_char), sa_index : c_ptr(reb_simulationarchive), warnings : c_ptr(c_int)) : void;

extern proc reb_simulationarchive_free_pointers(ref sa : reb_simulationarchive) : void;

extern proc reb_simulationarchive_free_pointers(sa : c_ptr(reb_simulationarchive)) : void;

extern proc reb_particles_transform_inertial_to_jacobi_posvel(const ref particles : reb_particle, ref p_j : reb_particle, const ref p_mass : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_jacobi_posvel(particles : c_ptrConst(reb_particle), p_j : c_ptr(reb_particle), p_mass : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_jacobi_posvelacc(const ref particles : reb_particle, ref p_j : reb_particle, const ref p_mass : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_jacobi_posvelacc(particles : c_ptrConst(reb_particle), p_j : c_ptr(reb_particle), p_mass : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_jacobi_acc(const ref particles : reb_particle, ref p_j : reb_particle, const ref p_mass : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_jacobi_acc(particles : c_ptrConst(reb_particle), p_j : c_ptr(reb_particle), p_mass : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_jacobi_to_inertial_posvel(ref particles : reb_particle, const ref p_j : reb_particle, const ref p_mass : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_jacobi_to_inertial_posvel(particles : c_ptr(reb_particle), p_j : c_ptrConst(reb_particle), p_mass : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_jacobi_to_inertial_pos(ref particles : reb_particle, const ref p_j : reb_particle, const ref p_mass : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_jacobi_to_inertial_pos(particles : c_ptr(reb_particle), p_j : c_ptrConst(reb_particle), p_mass : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_jacobi_to_inertial_acc(ref particles : reb_particle, const ref p_j : reb_particle, const ref p_mass : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_jacobi_to_inertial_acc(particles : c_ptr(reb_particle), p_j : c_ptrConst(reb_particle), p_mass : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_democraticheliocentric_posvel(const ref particles : reb_particle, ref p_h : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_democraticheliocentric_posvel(particles : c_ptrConst(reb_particle), p_h : c_ptr(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_democraticheliocentric_to_inertial_pos(ref particles : reb_particle, const ref p_h : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_democraticheliocentric_to_inertial_pos(particles : c_ptr(reb_particle), p_h : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_democraticheliocentric_to_inertial_posvel(ref particles : reb_particle, const ref p_h : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_democraticheliocentric_to_inertial_posvel(particles : c_ptr(reb_particle), p_h : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_whds_posvel(const ref particles : reb_particle, ref p_h : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_inertial_to_whds_posvel(particles : c_ptrConst(reb_particle), p_h : c_ptr(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_whds_to_inertial_pos(ref particles : reb_particle, const ref p_h : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_whds_to_inertial_pos(particles : c_ptr(reb_particle), p_h : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_whds_to_inertial_posvel(ref particles : reb_particle, const ref p_h : reb_particle, N : c_uint, N_active : c_uint) : void;

extern proc reb_particles_transform_whds_to_inertial_posvel(particles : c_ptr(reb_particle), p_h : c_ptrConst(reb_particle), N : c_uint, N_active : c_uint) : void;

extern proc reb_integrator_ias15_reset(ref r : reb_simulation) : void;

extern proc reb_integrator_ias15_reset(r : c_ptr(reb_simulation)) : void;

extern proc reb_integrator_ias15_part2(ref r : reb_simulation) : void;

extern proc reb_integrator_ias15_part2(r : c_ptr(reb_simulation)) : void;

extern proc reb_integrator_whfast_from_inertial(ref r : reb_simulation) : void;

extern proc reb_integrator_whfast_from_inertial(r : c_ptr(reb_simulation)) : void;

extern proc reb_integrator_whfast_to_inertial(ref r : reb_simulation) : void;

extern proc reb_integrator_whfast_to_inertial(r : c_ptr(reb_simulation)) : void;

extern proc reb_integrator_whfast_reset(ref r : reb_simulation) : void;

extern proc reb_integrator_whfast_reset(r : c_ptr(reb_simulation)) : void;

extern proc reb_integrator_whfast_init(ref r : reb_simulation) : c_int;

extern proc reb_integrator_whfast_init(r : c_ptr(reb_simulation)) : c_int;

extern proc reb_whfast_interaction_step(ref r : reb_simulation, _dt : c_double) : void;

extern proc reb_whfast_interaction_step(r : c_ptr(reb_simulation), _dt : c_double) : void;

extern proc reb_whfast_jump_step(const ref r : reb_simulation, _dt : c_double) : void;

extern proc reb_whfast_jump_step(r : c_ptrConst(reb_simulation), _dt : c_double) : void;

extern proc reb_whfast_kepler_step(const ref r : reb_simulation, _dt : c_double) : void;

extern proc reb_whfast_kepler_step(r : c_ptrConst(reb_simulation), _dt : c_double) : void;

extern proc reb_whfast_com_step(const ref r : reb_simulation, _dt : c_double) : void;

extern proc reb_whfast_com_step(r : c_ptrConst(reb_simulation), _dt : c_double) : void;

// c2chapel thinks these typedefs are from the fake headers:
/*
extern type FILE = c_int;

// Opaque struct?
extern record MirBlob {};

// Opaque struct?
extern record MirBufferStream {};

// Opaque struct?
extern record MirConnection {};

// Opaque struct?
extern record MirDisplayConfig {};

extern type MirEGLNativeDisplayType = c_ptr(void);

extern type MirEGLNativeWindowType = c_ptr(void);

// Opaque struct?
extern record MirPersistentId {};

// Opaque struct?
extern record MirPromptSession {};

// Opaque struct?
extern record MirScreencast {};

// Opaque struct?
extern record MirSurface {};

// Opaque struct?
extern record MirSurfaceSpec {};

extern type _LOCK_RECURSIVE_T = c_int;

extern type _LOCK_T = c_int;

extern type __FILE = c_int;

extern type __ULong = c_int;

extern type __builtin_va_list = c_int;

extern type __dev_t = c_int;

extern type __gid_t = c_int;

extern type __gnuc_va_list = c_int;

extern type __int16_t = c_int;

extern type __int32_t = c_int;

extern type __int64_t = c_int;

extern type __int8_t = c_int;

extern type __int_least16_t = c_int;

extern type __int_least32_t = c_int;

extern type __loff_t = c_int;

extern type __off_t = c_int;

extern type __pid_t = c_int;

extern type __s16 = c_int;

extern type __s32 = c_int;

extern type __s64 = c_int;

extern type __s8 = c_int;

extern type __sigset_t = c_int;

extern type __tzinfo_type = c_int;

extern type __tzrule_type = c_int;

extern type __u16 = c_int;

extern type __u32 = c_int;

extern type __u64 = c_int;

extern type __u8 = c_int;

extern type __uid_t = c_int;

extern type __uint16_t = c_int;

extern type __uint32_t = c_int;

extern type __uint64_t = c_int;

extern type __uint8_t = c_int;

extern type __uint_least16_t = c_int;

extern type __uint_least32_t = c_int;

extern type _flock_t = c_int;

extern type _fpos_t = c_int;

extern type _iconv_t = c_int;

extern type _mbstate_t = c_int;

extern type _off64_t = c_int;

extern type _off_t = c_int;

extern type _sig_func_ptr = c_int;

extern type _ssize_t = c_int;

extern type _types_fd_set = c_int;

extern type bool = _Bool;

extern type caddr_t = c_int;

extern type clock_t = c_int;

extern type clockid_t = c_int;

extern type cookie_close_function_t = c_int;

extern type cookie_io_functions_t = c_int;

extern type cookie_read_function_t = c_int;

extern type cookie_seek_function_t = c_int;

extern type cookie_write_function_t = c_int;

extern type daddr_t = c_int;

extern type dev_t = c_int;

extern type div_t = c_int;

extern type fd_mask = c_int;

extern type fpos_t = c_int;

extern type gid_t = c_int;

extern type ino_t = c_int;

extern type int16_t = c_int;

extern type int32_t = c_int;

extern type int64_t = c_int;

extern type int8_t = c_int;

extern type int_fast16_t = c_int;

extern type int_fast32_t = c_int;

extern type int_fast64_t = c_int;

extern type int_fast8_t = c_int;

extern type int_least16_t = c_int;

extern type int_least32_t = c_int;

extern type int_least64_t = c_int;

extern type int_least8_t = c_int;

extern type intmax_t = c_int;

extern type intptr_t = c_int;

extern type jmp_buf = c_int;

extern type key_t = c_int;

extern type ldiv_t = c_int;

extern type lldiv_t = c_int;

extern type mbstate_t = c_int;

extern type mode_t = c_int;

extern type nlink_t = c_int;

extern type off_t = c_int;

extern type pid_t = c_int;

extern type pthread_attr_t = c_int;

extern type pthread_barrier_t = c_int;

extern type pthread_barrierattr_t = c_int;

extern type pthread_cond_t = c_int;

extern type pthread_condattr_t = c_int;

extern type pthread_key_t = c_int;

extern type pthread_mutex_t = c_int;

extern type pthread_mutexattr_t = c_int;

extern type pthread_once_t = c_int;

extern type pthread_rwlock_t = c_int;

extern type pthread_rwlockattr_t = c_int;

extern type pthread_spinlock_t = c_int;

extern type pthread_t = c_int;

extern type ptrdiff_t = c_int;

extern type rlim_t = c_int;

extern type sa_family_t = c_int;

extern type sem_t = c_int;

extern type sig_atomic_t = c_int;

extern type siginfo_t = c_int;

extern type sigjmp_buf = c_int;

extern type sigset_t = c_int;

extern type size_t = c_int;

extern type ssize_t = c_int;

extern type stack_t = c_int;

extern type suseconds_t = c_int;

extern type time_t = c_int;

extern type timer_t = c_int;

extern type u_char = c_int;

extern type u_int = c_int;

extern type u_long = c_int;

extern type u_short = c_int;

extern type uid_t = c_int;

extern type uint = c_int;

extern type uint16_t = c_int;

extern type uint32_t = c_int;

extern type uint64_t = c_int;

extern type uint8_t = c_int;

extern type uint_fast16_t = c_int;

extern type uint_fast32_t = c_int;

extern type uint_fast64_t = c_int;

extern type uint_fast8_t = c_int;

extern type uint_least16_t = c_int;

extern type uint_least32_t = c_int;

extern type uint_least64_t = c_int;

extern type uint_least8_t = c_int;

extern type uintmax_t = c_int;

extern type uintptr_t = c_int;

extern type useconds_t = c_int;

extern type ushort = c_int;

extern type va_list = c_int;

extern type wchar_t = c_int;

extern type wint_t = c_int;

// Opaque struct?
extern record xcb_connection_t {};

extern type xcb_visualid_t = uint(32);

extern type xcb_window_t = uint(32);

extern type z_stream = c_int;

*/
