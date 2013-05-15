.class public Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "ScannerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Lcom/avast/android/mobilesecurity/t;

.field private d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

.field private g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private h:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

.field private i:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

.field private j:Lcom/avast/android/generic/ui/widget/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/r;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/scanner/r;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->j:Lcom/avast/android/generic/ui/widget/c;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d()V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;->a(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aO()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aP()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 245
    :goto_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aO()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aP()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    const v4, 0x7f0c0211

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->d(Ljava/lang/String;)V

    .line 254
    :goto_1
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->setEnabled(Z)V

    .line 255
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 256
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->h:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aQ()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v3, v2

    :goto_2
    invoke-virtual {v4, v3}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->setEnabled(Z)V

    .line 257
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->i:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/t;->aQ()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->setEnabled(Z)V

    .line 259
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0207

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p0, v4, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 261
    const v1, 0x7f0c0209

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Landroid/text/Spanned;)V

    .line 263
    return-void

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aO()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    const v4, 0x7f0c0212

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_3
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aP()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    const v4, 0x7f0c0213

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    :cond_4
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move v3, v1

    .line 256
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 257
    goto :goto_3
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/WeekDaysRow;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->h:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aT()Ljava/util/List;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    const v0, 0x7f0c0208

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 270
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 272
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/filebrowser/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 280
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/TimeButtonRow;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->i:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "/ms/scanner"

    return-object v0
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_0

    .line 217
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 218
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->am()Z

    move-result v0

    .line 221
    if-lez v1, :cond_2

    .line 222
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const v0, 0x7f020179

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0013

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/a/m;->t()V

    .line 237
    return-void

    .line 222
    :cond_1
    const v0, 0x7f020186

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    const v1, 0x7f0c01fd

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 228
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 231
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    const v3, 0x7f0a0034

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a0032

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v1, v3, v1, v0}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_1
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0c01ea

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 193
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->j:Lcom/avast/android/generic/ui/widget/c;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/avast/android/generic/ui/widget/c;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V

    .line 194
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 286
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 287
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_2

    .line 289
    const-string v1, "file://ROOT_PATH"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/util/List;)V

    .line 308
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d()V

    .line 310
    :cond_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/util/List;)V

    goto :goto_0

    .line 296
    :cond_2
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    sget v3, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/util/List;)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c:Lcom/avast/android/mobilesecurity/t;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->setHasOptionsMenu(Z)V

    .line 81
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 211
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->c()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const v0, 0x7f030061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 93
    const v0, 0x7f070127

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/s;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/s;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f070154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    .line 104
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f:Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/t;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/t;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f070152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 113
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->j:Lcom/avast/android/generic/ui/widget/c;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 115
    const v0, 0x7f070153

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 116
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->j:Lcom/avast/android/generic/ui/widget/c;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 117
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/u;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/u;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    const v0, 0x7f070155

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 135
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/v;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/v;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 157
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/w;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/w;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f0700ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->h:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    .line 170
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->h:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/x;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/x;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a(Lcom/avast/android/generic/ui/widget/ah;)V

    .line 179
    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->i:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    .line 181
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d()V

    .line 183
    return-object v1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->h:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->c()I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/generic/d;->b(I)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->i:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->c()I

    move-result v1

    .line 200
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;->a(Landroid/content/Context;II)V

    .line 202
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 203
    return-void
.end method
