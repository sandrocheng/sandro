.class public final Ladj;
.super Ladg;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ladg;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Ladg;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladj;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Ladj;
    .locals 1

    new-instance v0, Ladj;

    invoke-direct {v0}, Ladj;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ladg;)V
    .locals 1

    iget-object v0, p0, Ladj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
