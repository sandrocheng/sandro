.class final Lbia;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Lbhz;


# direct methods
.method constructor <init>(Lbhz;)V
    .locals 0

    iput-object p1, p0, Lbia;->a:Lbhz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbia;->a:Lbhz;

    invoke-static {v0}, Lbhz;->a(Lbhz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method