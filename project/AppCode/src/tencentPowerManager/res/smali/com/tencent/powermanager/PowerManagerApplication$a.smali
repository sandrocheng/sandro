.class final Lcom/tencent/powermanager/PowerManagerApplication$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/powermanager/PowerManagerApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field private static synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/powermanager/PowerManagerApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/powermanager/PowerManagerApplication$a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final config(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lbt;->a()Lbt;

    move-result-object v0

    const-string v1, "su_cmd"

    sget-object v2, Lbk;->a:Lbk$g;

    if-nez v2, :cond_0

    invoke-static {}, Lbt;->a()Lbt;

    move-result-object v2

    invoke-virtual {v2}, Lbt;->f()I

    move-result v2

    sget v3, Lbt$a;->a:I

    if-ne v2, v3, :cond_1

    new-instance v2, Lbk$g;

    invoke-direct {v2, v4}, Lbk$g;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    :cond_0
    :goto_0
    sget-object v2, Lbk;->a:Lbk$g;

    invoke-virtual {v2}, Lbk$g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "build"

    invoke-virtual {v0}, Lbt;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channel"

    invoke-virtual {v0}, Lbt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lc"

    invoke-virtual {v0}, Lbt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "softversion"

    invoke-virtual {v0}, Lbt;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lbt;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\._]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/powermanager/PowerManagerApplication$a;->a:Z

    if-nez v1, :cond_11

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget v3, Lbt$a;->b:I

    if-ne v2, v3, :cond_2

    new-instance v2, Lbk$e;

    invoke-direct {v2, v4}, Lbk$e;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto :goto_0

    :cond_2
    sget v3, Lbt$a;->e:I

    if-ne v2, v3, :cond_3

    new-instance v2, Lbk$h;

    invoke-direct {v2, v4}, Lbk$h;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto :goto_0

    :cond_3
    sget v3, Lbt$a;->d:I

    if-ne v2, v3, :cond_4

    new-instance v2, Lbk$j;

    invoke-direct {v2, v4}, Lbk$j;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto :goto_0

    :cond_4
    sget v3, Lbt$a;->c:I

    if-ne v2, v3, :cond_5

    new-instance v2, Lbk$n;

    invoke-direct {v2, v4}, Lbk$n;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto :goto_0

    :cond_5
    sget v3, Lbt$a;->f:I

    if-ne v2, v3, :cond_6

    new-instance v2, Lbk$f;

    invoke-direct {v2, v4}, Lbk$f;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_6
    sget v3, Lbt$a;->g:I

    if-ne v2, v3, :cond_7

    new-instance v2, Lbk$p;

    invoke-direct {v2, v4}, Lbk$p;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_7
    sget v3, Lbt$a;->i:I

    if-ne v2, v3, :cond_8

    new-instance v2, Lbk$m;

    invoke-direct {v2, v4}, Lbk$m;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_8
    sget v3, Lbt$a;->j:I

    if-ne v2, v3, :cond_9

    new-instance v2, Lbk$o;

    invoke-direct {v2, v4}, Lbk$o;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_9
    sget v3, Lbt$a;->h:I

    if-ne v2, v3, :cond_a

    new-instance v2, Lbk$l;

    invoke-direct {v2, v4}, Lbk$l;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_a
    sget v3, Lbt$a;->k:I

    if-ne v2, v3, :cond_b

    new-instance v2, Lbk$k;

    invoke-direct {v2, v4}, Lbk$k;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_b
    sget v3, Lbt$a;->l:I

    if-ne v2, v3, :cond_c

    new-instance v2, Lbk$i;

    invoke-direct {v2, v4}, Lbk$i;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_c
    sget v3, Lbt$a;->m:I

    if-ne v2, v3, :cond_d

    new-instance v2, Lbk$a;

    invoke-direct {v2, v4}, Lbk$a;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_d
    sget v3, Lbt$a;->n:I

    if-ne v2, v3, :cond_e

    new-instance v2, Lbk$c;

    invoke-direct {v2, v4}, Lbk$c;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_e
    sget v3, Lbt$a;->o:I

    if-ne v2, v3, :cond_f

    new-instance v2, Lbk$b;

    invoke-direct {v2, v4}, Lbk$b;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_f
    sget v3, Lbt$a;->p:I

    if-ne v2, v3, :cond_10

    new-instance v2, Lbk$d;

    invoke-direct {v2, v4}, Lbk$d;-><init>(B)V

    sput-object v2, Lbk;->a:Lbk$g;

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "^^ no such PLATFORM_OEM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v1, "pversion"

    aget-object v2, v0, v4

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cversion"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hotfix"

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "plugin_dir"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugins"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "product"

    const-string v1, "21"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sub_platform"

    const-string v1, "201"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "host_url"

    sget-object v1, Lo;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method
