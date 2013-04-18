.class final Lcom/b/a/q;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/cu;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ct;)Lcom/b/a/db;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 16892
    invoke-static {p1}, Lcom/b/a/p;->a(Lcom/b/a/ct;)Lcom/b/a/ct;

    .line 16893
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->a(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16895
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->b()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "File"

    aput-object v3, v2, v5

    const-class v3, Lcom/b/a/ay;

    const-class v4, Lcom/b/a/az;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->a(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16901
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->b(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16903
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->d()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Package"

    aput-object v3, v2, v6

    const-string v3, "Dependency"

    aput-object v3, v2, v7

    const-string v3, "MessageType"

    aput-object v3, v2, v8

    const-string v3, "EnumType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Service"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Extension"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Options"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SourceCodeInfo"

    aput-object v4, v2, v3

    const-class v3, Lcom/b/a/av;

    const-class v4, Lcom/b/a/aw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->b(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16909
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->c(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16911
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->f()Lcom/b/a/cj;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Field"

    aput-object v3, v2, v6

    const-string v3, "Extension"

    aput-object v3, v2, v7

    const-string v3, "NestedType"

    aput-object v3, v2, v8

    const-string v3, "EnumType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ExtensionRange"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/b/a/r;

    const-class v4, Lcom/b/a/s;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->c(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16917
    invoke-static {}, Lcom/b/a/p;->f()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->d(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16919
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->h()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Start"

    aput-object v3, v2, v5

    const-string v3, "End"

    aput-object v3, v2, v6

    const-class v3, Lcom/b/a/t;

    const-class v4, Lcom/b/a/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->d(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16925
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->e(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16927
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->j()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Number"

    aput-object v3, v2, v6

    const-string v3, "Label"

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "TypeName"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Extendee"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DefaultValue"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/b/a/aj;

    const-class v4, Lcom/b/a/ak;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->e(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16933
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->f(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16935
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->l()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Value"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/b/a/x;

    const-class v4, Lcom/b/a/y;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->f(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16941
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->g(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16943
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->n()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Number"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/b/a/ad;

    const-class v4, Lcom/b/a/ae;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->g(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16949
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->h(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16951
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->p()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Method"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/b/a/bp;

    const-class v4, Lcom/b/a/bq;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->h(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16957
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->i(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16959
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->r()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "InputType"

    aput-object v3, v2, v6

    const-string v3, "OutputType"

    aput-object v3, v2, v7

    const-string v3, "Options"

    aput-object v3, v2, v8

    const-class v3, Lcom/b/a/bj;

    const-class v4, Lcom/b/a/bk;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->i(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16965
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->j(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16967
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->t()Lcom/b/a/cj;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "JavaPackage"

    aput-object v3, v2, v5

    const-string v3, "JavaOuterClassname"

    aput-object v3, v2, v6

    const-string v3, "JavaMultipleFiles"

    aput-object v3, v2, v7

    const-string v3, "JavaGenerateEqualsAndHash"

    aput-object v3, v2, v8

    const-string v3, "OptimizeFor"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CcGenericServices"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "JavaGenericServices"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "PyGenericServices"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "UninterpretedOption"

    aput-object v4, v2, v3

    const-class v3, Lcom/b/a/bb;

    const-class v4, Lcom/b/a/bc;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->j(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16973
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->k(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16975
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->v()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MessageSetWireFormat"

    aput-object v3, v2, v5

    const-string v3, "NoStandardDescriptorAccessor"

    aput-object v3, v2, v6

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v7

    const-class v3, Lcom/b/a/bg;

    const-class v4, Lcom/b/a/bh;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->k(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16981
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->l(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16983
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->x()Lcom/b/a/cj;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Ctype"

    aput-object v3, v2, v5

    const-string v3, "Packed"

    aput-object v3, v2, v6

    const-string v3, "Deprecated"

    aput-object v3, v2, v7

    const-string v3, "ExperimentalMapKey"

    aput-object v3, v2, v8

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v9

    const-class v3, Lcom/b/a/aq;

    const-class v4, Lcom/b/a/ar;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->l(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16989
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->m(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16991
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->z()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/b/a/aa;

    const-class v4, Lcom/b/a/ab;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->m(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 16997
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->n(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 16999
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->B()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/b/a/ag;

    const-class v4, Lcom/b/a/ah;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->n(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 17005
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->o(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 17007
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->D()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/b/a/bs;

    const-class v4, Lcom/b/a/bt;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->o(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 17013
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->p(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 17015
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->F()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/b/a/bm;

    const-class v4, Lcom/b/a/bn;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->p(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 17021
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->q(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 17023
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->H()Lcom/b/a/cj;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "IdentifierValue"

    aput-object v3, v2, v6

    const-string v3, "PositiveIntValue"

    aput-object v3, v2, v7

    const-string v3, "NegativeIntValue"

    aput-object v3, v2, v8

    const-string v3, "DoubleValue"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "StringValue"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "AggregateValue"

    aput-object v4, v2, v3

    const-class v3, Lcom/b/a/cb;

    const-class v4, Lcom/b/a/cc;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->q(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 17029
    invoke-static {}, Lcom/b/a/p;->H()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->r(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 17031
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->J()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "NamePart"

    aput-object v3, v2, v5

    const-string v3, "IsExtension"

    aput-object v3, v2, v6

    const-class v3, Lcom/b/a/cd;

    const-class v4, Lcom/b/a/ce;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->r(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 17037
    invoke-static {}, Lcom/b/a/p;->a()Lcom/b/a/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ct;->d()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->s(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 17039
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->L()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Location"

    aput-object v3, v2, v5

    const-class v3, Lcom/b/a/bv;

    const-class v4, Lcom/b/a/bw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->s(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 17045
    invoke-static {}, Lcom/b/a/p;->L()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cj;

    invoke-static {p0}, Lcom/b/a/p;->t(Lcom/b/a/cj;)Lcom/b/a/cj;

    .line 17047
    new-instance v0, Lcom/b/a/dv;

    invoke-static {}, Lcom/b/a/p;->N()Lcom/b/a/cj;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Path"

    aput-object v3, v2, v5

    const-string v3, "Span"

    aput-object v3, v2, v6

    const-class v3, Lcom/b/a/bx;

    const-class v4, Lcom/b/a/by;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/dv;-><init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/b/a/p;->t(Lcom/b/a/dv;)Lcom/b/a/dv;

    .line 17053
    const/4 v0, 0x0

    return-object v0
.end method
