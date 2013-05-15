.class Lcom/avast/android/generic/app/about/d;
.super Landroid/os/AsyncTask;
.source "AboutFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/SlideBlock;

.field final synthetic b:Lcom/avast/android/generic/app/about/AboutFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/about/AboutFragment;Lcom/avast/android/generic/ui/widget/SlideBlock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/avast/android/generic/app/about/d;->b:Lcom/avast/android/generic/app/about/AboutFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/about/d;->a:Lcom/avast/android/generic/ui/widget/SlideBlock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/avast/android/generic/app/about/d;->b:Lcom/avast/android/generic/app/about/AboutFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/about/AboutFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/avast/android/generic/app/about/d;->b:Lcom/avast/android/generic/app/about/AboutFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/about/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/y;->a:I

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/al;->a(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/app/about/d;->a:Lcom/avast/android/generic/ui/widget/SlideBlock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SlideBlock;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/avast/android/generic/app/about/d;->b:Lcom/avast/android/generic/app/about/AboutFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 262
    sget v1, Lcom/avast/android/generic/v;->G:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 264
    sget v0, Lcom/avast/android/generic/t;->M:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 266
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/avast/android/generic/app/about/d;->a:Lcom/avast/android/generic/ui/widget/SlideBlock;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 244
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/about/d;->a([Ljava/lang/Void;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/about/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
