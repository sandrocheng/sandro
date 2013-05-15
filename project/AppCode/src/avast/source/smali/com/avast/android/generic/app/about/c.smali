.class Lcom/avast/android/generic/app/about/c;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/y;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/SlideBlock;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:F

.field final synthetic d:Lcom/avast/android/generic/app/about/AboutFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/about/AboutFragment;Lcom/avast/android/generic/ui/widget/SlideBlock;Landroid/os/Handler;F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/avast/android/generic/app/about/c;->d:Lcom/avast/android/generic/app/about/AboutFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/about/c;->a:Lcom/avast/android/generic/ui/widget/SlideBlock;

    iput-object p3, p0, Lcom/avast/android/generic/app/about/c;->b:Landroid/os/Handler;

    iput p4, p0, Lcom/avast/android/generic/app/about/c;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/SlideBlock;)V
    .locals 6
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/avast/android/generic/app/about/c;->d:Lcom/avast/android/generic/app/about/AboutFragment;

    const-string v1, "ms-About"

    const-string v2, "eulaText"

    const-string v3, "show"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/about/AboutFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    iget-object v0, p0, Lcom/avast/android/generic/app/about/c;->a:Lcom/avast/android/generic/ui/widget/SlideBlock;

    iget-object v1, p0, Lcom/avast/android/generic/app/about/c;->d:Lcom/avast/android/generic/app/about/AboutFragment;

    sget v2, Lcom/avast/android/generic/z;->bV:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/about/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/avast/android/generic/app/about/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/generic/app/about/c;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    const/high16 v3, 0x42c8

    iget v4, p0, Lcom/avast/android/generic/app/about/c;->c:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    return-void
.end method

.method public b(Lcom/avast/android/generic/ui/widget/SlideBlock;)V
    .locals 6
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/avast/android/generic/app/about/c;->d:Lcom/avast/android/generic/app/about/AboutFragment;

    const-string v1, "ms-About"

    const-string v2, "eulaText"

    const-string v3, "hide"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/about/AboutFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 240
    iget-object v0, p0, Lcom/avast/android/generic/app/about/c;->a:Lcom/avast/android/generic/ui/widget/SlideBlock;

    iget-object v1, p0, Lcom/avast/android/generic/app/about/c;->d:Lcom/avast/android/generic/app/about/AboutFragment;

    sget v2, Lcom/avast/android/generic/z;->aV:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/about/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method
