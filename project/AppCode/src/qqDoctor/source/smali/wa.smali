.class final Lwa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lvk;


# direct methods
.method constructor <init>(Lvk;)V
    .locals 0

    iput-object p1, p0, Lwa;->a:Lvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwa;->a:Lvk;

    iget-object v0, v0, Lvk;->g:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    return-void
.end method
