.class final Lqa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lpz;


# direct methods
.method constructor <init>(Lpz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqa;->b:Lpz;

    iput-object p2, p0, Lqa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lqa;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->i(Lpx;)Lbgj;

    move-result-object v0

    iget-object v1, p0, Lqa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbgj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lqa;->b:Lpz;

    iget-object v0, v0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->j(Lpx;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lpx;->a:Landroid/widget/Toast;

    const v2, 0x7f0b0a05

    invoke-static {v0, v1, v2}, Lfi;->a(Landroid/content/Context;Landroid/widget/Toast;I)V

    return-void
.end method
