.class final Lvo;
.super Ljava/lang/Object;

# interfaces
.implements Lvk$b;


# instance fields
.field private synthetic a:Llf;

.field private synthetic b:Lvk;


# direct methods
.method constructor <init>(Lvk;Llf;)V
    .locals 0

    iput-object p1, p0, Lvo;->b:Lvk;

    iput-object p2, p0, Lvo;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lvo;->b:Lvk;

    iget-object v1, p0, Lvo;->a:Llf;

    new-instance v2, Lvy;

    invoke-direct {v2, v0, v1}, Lvy;-><init>(Lvk;Llf;)V

    invoke-interface {v2}, Lvk$b;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lvp;

    invoke-direct {v2, v0, v1}, Lvp;-><init>(Lvk;Llf;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v2}, Lvk$b;->a()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
