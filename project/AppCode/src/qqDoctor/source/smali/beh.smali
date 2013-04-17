.class final Lbeh;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Lbeg;


# direct methods
.method constructor <init>(Lbeg;)V
    .locals 0

    iput-object p1, p0, Lbeh;->a:Lbeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lbeh;->a:Lbeg;

    iget-object v0, v0, Lbeg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-object v2, p0, Lbeh;->a:Lbeg;

    iget-object v2, v2, Lbeg;->b:Lbed;

    invoke-static {v2}, Lbed;->d(Lbed;)Ljf;

    move-result-object v2

    iget-object v3, v0, Lkx;->b:Ljava/lang/String;

    iget-object v0, v0, Lkx;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
