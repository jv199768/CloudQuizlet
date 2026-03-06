Large Language Models (LLMs) are increasingly evolving from

passive text generators into active agents that can perform real-

world tasks by invoking external tools. To support this shift, scalable

protocols for tool integration are essential. The Model Context

Protocol (MCP), introduced by Anthropic in late 2024, offers a

schema-driven standard for dynamic tool discovery and invocation.

Yet, building MCP servers remains manual and repetitive, requiring

developers to write glue code, handle authentication, and configure

schemas by hand, replicating much of the integration effort MCP

aims to eliminate.

This paper investigates whether MCP server construction can be

meaningfully automated. We begin by analyzing adoption trends:

from over 22,000 MCP-tagged GitHub repositories created within

six months of release, fewer than 5% include servers, typically small,

single-maintainer projects dominated by repetitive scaffolding. To

address this gap, we present AutoMCP, a compiler that generates

MCP servers from OpenAPI 2.0/3.0 specifications. AutoMCP parses

REST API definitions and produces complete server implementa-

tions, including schema registration and authentication handling.

We evaluate it on 50 real-world APIs spanning 5,066 endpoints and

more than 10 domains. From a stratified sample of 1,023 tool calls,

76.5% succeeded out-of-the-box. Manual failure analysis revealed

five recurring issues, all attributable to inconsistencies or omissions

in the OpenAPI contracts. After minor fixes, averaging just 19 lines

of spec changes per API, AutoMCP achieved 99.9% success.

Our findings (i) analyze MCP adoption and quantify the cost of

manual server development, (ii) demonstrate that OpenAPI specifi-

cations, despite quality issues, enable near-complete MCP server

automation, and (iii) contribute a corpus of 5,066 callable tools

along with insights on repairing common specification flaws. These

results shift the adoption bottleneck from code generation to speci-

fication quality, offering a path toward LLM-native tool ecosystems.
