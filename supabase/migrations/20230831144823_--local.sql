create table "public"."todos" (
    "id" uuid not null default gen_random_uuid(),
    "text" text not null,
    "completed" boolean default false
);


alter table "public"."todos" enable row level security;

CREATE UNIQUE INDEX todos_pkey ON public.todos USING btree (id);

alter table "public"."todos" add constraint "todos_pkey" PRIMARY KEY using index "todos_pkey";


