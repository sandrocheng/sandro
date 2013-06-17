.class public final Lcom/avg/ui/license/qrreader/general/d;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

.field private final c:Lcom/avg/ui/license/qrreader/general/h;

.field private d:Lcom/avg/ui/license/qrreader/general/e;

.field private final e:Lcom/avg/ui/license/qrreader/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/avg/ui/license/qrreader/general/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avg/ui/license/qrreader/general/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/avg/ui/license/qrreader/general/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/avg/ui/license/qrreader/a/c;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/license/qrreader/general/d;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/h;

    new-instance v1, Lcom/avg/ui/license/qrreader/general/p;

    invoke-virtual {p1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a()Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/avg/ui/license/qrreader/general/p;-><init>(Lcom/avg/ui/license/qrreader/general/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/avg/ui/license/qrreader/general/h;-><init>(Lcom/avg/ui/license/qrreader/general/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->c:Lcom/avg/ui/license/qrreader/general/h;

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->c:Lcom/avg/ui/license/qrreader/general/h;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/h;->start()V

    sget-object v0, Lcom/avg/ui/license/qrreader/general/e;->b:Lcom/avg/ui/license/qrreader/general/e;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->d:Lcom/avg/ui/license/qrreader/general/e;

    iput-object p4, p0, Lcom/avg/ui/license/qrreader/general/d;->e:Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {p4}, Lcom/avg/ui/license/qrreader/a/c;->b()V

    invoke-direct {p0}, Lcom/avg/ui/license/qrreader/general/d;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->d:Lcom/avg/ui/license/qrreader/general/e;

    sget-object v1, Lcom/avg/ui/license/qrreader/general/e;->b:Lcom/avg/ui/license/qrreader/general/e;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/avg/ui/license/qrreader/general/e;->a:Lcom/avg/ui/license/qrreader/general/e;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->d:Lcom/avg/ui/license/qrreader/general/e;

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->e:Lcom/avg/ui/license/qrreader/a/c;

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/d;->c:Lcom/avg/ui/license/qrreader/general/h;

    invoke-virtual {v1}, Lcom/avg/ui/license/qrreader/general/h;->a()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/license/qrreader/a/c;->a(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->e:Lcom/avg/ui/license/qrreader/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/avg/ui/license/qrreader/a/c;->b(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/avg/ui/license/qrreader/general/e;->c:Lcom/avg/ui/license/qrreader/general/e;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->d:Lcom/avg/ui/license/qrreader/general/e;

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->e:Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/a/c;->c()V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->c:Lcom/avg/ui/license/qrreader/general/h;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/h;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->c:Lcom/avg/ui/license/qrreader/general/h;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/license/qrreader/general/h;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/d;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/d;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->d:Lcom/avg/ui/license/qrreader/general/e;

    sget-object v1, Lcom/avg/ui/license/qrreader/general/e;->a:Lcom/avg/ui/license/qrreader/general/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->e:Lcom/avg/ui/license/qrreader/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/avg/ui/license/qrreader/a/c;->b(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/avg/ui/license/qrreader/general/d;->b()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/avg/ui/license/qrreader/general/e;->b:Lcom/avg/ui/license/qrreader/general/e;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->d:Lcom/avg/ui/license/qrreader/general/e;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/d;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v2, v0, v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/avg/ui/license/qrreader/general/e;->a:Lcom/avg/ui/license/qrreader/general/e;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->d:Lcom/avg/ui/license/qrreader/general/e;

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->e:Lcom/avg/ui/license/qrreader/a/c;

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/d;->c:Lcom/avg/ui/license/qrreader/general/h;

    invoke-virtual {v1}, Lcom/avg/ui/license/qrreader/general/h;->a()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/license/qrreader/a/c;->a(Landroid/os/Handler;I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/d;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->finish()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/d;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0, v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
