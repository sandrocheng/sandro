.class final Lrd;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Lrc;


# direct methods
.method constructor <init>(Lrc;)V
    .locals 0

    iput-object p1, p0, Lrd;->a:Lrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lrd;->a:Lrc;

    iget-object v0, v0, Lrc;->a:Ldv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrd;->a:Lrc;

    iget-object v0, v0, Lrc;->a:Ldv;

    invoke-interface {v0, p1}, Ldv;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
