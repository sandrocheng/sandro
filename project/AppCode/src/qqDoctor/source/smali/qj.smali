.class final Lqj;
.super Ljava/lang/Object;

# interfaces
.implements Lpt$a;


# instance fields
.field private synthetic a:Lqc$a;

.field private synthetic b:Lqc;


# direct methods
.method constructor <init>(Lqc;Lqc$a;)V
    .locals 0

    iput-object p1, p0, Lqj;->b:Lqc;

    iput-object p2, p0, Lqj;->a:Lqc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lkw;)V
    .locals 4

    invoke-virtual {p1}, Lkw;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lqj;->b:Lqc;

    iget-object v0, v0, Lqc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Llc;->a:I

    iget-object v1, p0, Lqj;->b:Lqc;

    iget-object v1, v1, Lqc;->a:Ljava/util/ArrayList;

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lqj;->a:Lqc$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqj;->a:Lqc$a;

    invoke-interface {v1, v0}, Lqc$a;->b(Llc;)V

    :cond_0
    return-void
.end method
