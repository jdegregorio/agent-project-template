# Architecture

This document is authoritative for durable system structure and boundaries. Replace the scaffold sections with project facts; do not use it as a speculative backlog.

## System context

Describe the users, external systems, and the value this system provides.

## Components and responsibilities

List the major components, what each owns, and the interfaces between them.

## Data and state

Describe authoritative data stores, ownership, retention, consistency expectations, and sensitive-data boundaries.

## External dependencies

Record critical services, protocols, failure assumptions, and how local development handles each dependency.

## Cross-cutting constraints

Capture security, privacy, reliability, performance, accessibility, and compatibility constraints that shape implementation.

## Architecture map

Add the smallest diagram that makes component relationships easier to understand. Keep details in the prose and link durable choices to `docs/decisions/`.
