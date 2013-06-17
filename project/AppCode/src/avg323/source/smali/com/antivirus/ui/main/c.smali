.class public Lcom/antivirus/ui/main/c;
.super Lcom/antivirus/ui/a/a/a;


# static fields
.field public static b:Lcom/antivirus/core/scanners/c;

.field private static g:I


# instance fields
.field private Y:Z

.field private Z:Z

.field public a:Z

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/Button;

.field private ac:Lcom/antivirus/ui/main/n;

.field private ad:Lcom/antivirus/ui/main/b;

.field private ae:Lcom/antivirus/ui/main/b;

.field private ah:Lcom/antivirus/ui/main/b;

.field private ai:Lcom/antivirus/ui/main/b;

.field private aj:Lcom/antivirus/ui/main/l;

.field private ak:Lcom/avg/tuneup/battery/b;

.field private al:Z

.field private am:Z

.field private an:Landroid/os/Handler;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field e:Z

.field private f:Landroid/widget/ProgressBar;

.field private h:Lcom/antivirus/core/scanners/h;

.field private i:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    sput-object v0, Lcom/antivirus/ui/main/c;->b:Lcom/antivirus/core/scanners/c;

    const/4 v0, 0x0

    sput v0, Lcom/antivirus/ui/main/c;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-boolean v2, p0, Lcom/antivirus/ui/main/c;->a:Z

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    iput-boolean v2, p0, Lcom/antivirus/ui/main/c;->Y:Z

    iput-boolean v2, p0, Lcom/antivirus/ui/main/c;->Z:Z

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    sget-object v0, Lcom/antivirus/ui/main/n;->a:Lcom/antivirus/ui/main/n;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    sget-object v0, Lcom/antivirus/ui/main/l;->b:Lcom/antivirus/ui/main/l;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->aj:Lcom/antivirus/ui/main/l;

    iput-boolean v2, p0, Lcom/antivirus/ui/main/c;->al:Z

    iput-boolean v2, p0, Lcom/antivirus/ui/main/c;->am:Z

    iput-boolean v2, p0, Lcom/antivirus/ui/main/c;->e:Z

    return-void
.end method

.method static synthetic L()I
    .locals 1

    sget v0, Lcom/antivirus/ui/main/c;->g:I

    return v0
.end method

.method private M()V
    .locals 7

    const v2, 0x7f09023c

    const/4 v6, 0x0

    const v1, 0x7f090150

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/a;

    iget-boolean v0, v0, Lcom/antivirus/ui/a;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/main/HandheldMainActivity;

    iget-object v0, v0, Lcom/antivirus/ui/main/HandheldMainActivity;->n:Lcom/antivirus/a;

    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Lcom/antivirus/ui/main/o;

    invoke-direct {v4, p0}, Lcom/antivirus/ui/main/o;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sget-object v4, Lcom/antivirus/core/scanners/n;->b:Lcom/antivirus/core/scanners/n;

    sget-object v5, Lcom/antivirus/ui/main/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v3, v4, v5}, Lcom/antivirus/a;->a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;Lcom/antivirus/core/scanners/c;)I

    move-result v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "SCAN_STATUS_BROADCAST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    const v0, 0x7f09014f

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    const v0, 0x7f090151

    goto :goto_0

    :sswitch_5
    iget-boolean v1, p0, Lcom/antivirus/ui/main/c;->Z:Z

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcom/antivirus/ui/main/c;->Z:Z

    :goto_2
    const-string v1, "SCAN_STATUS_BROADCAST_EXTRA"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->S()V

    goto :goto_2

    :sswitch_6
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_5
        -0x1 -> :sswitch_6
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/m;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-static {v0}, Lcom/antivirus/ui/main/m;->a(Lcom/antivirus/ui/main/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/main/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-static {v0}, Lcom/antivirus/ui/main/m;->b(Lcom/antivirus/ui/main/m;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/antivirus/ui/main/m;->c(Lcom/antivirus/ui/main/m;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/antivirus/ui/main/c;->Y:Z

    invoke-static {v0}, Lcom/antivirus/ui/main/m;->d(Lcom/antivirus/ui/main/m;)Lcom/antivirus/ui/main/n;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    invoke-static {v0}, Lcom/antivirus/ui/main/m;->e(Lcom/antivirus/ui/main/m;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/antivirus/ui/main/m;->f(Lcom/antivirus/ui/main/m;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/antivirus/ui/main/c;->am:Z

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avg/tuneup/traffic/s;->a(Z)[D

    move-result-object v0

    if-eqz v0, :cond_0

    aget-wide v1, v0, v5

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    iput-boolean v6, p0, Lcom/antivirus/ui/main/c;->am:Z

    iput-boolean v6, p0, Lcom/antivirus/ui/main/c;->e:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->P()V

    return-void

    :cond_1
    invoke-static {}, Lcom/antivirus/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-wide v0, v0, v5

    invoke-static {}, Lcom/antivirus/c;->h()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iput-boolean v6, p0, Lcom/antivirus/ui/main/c;->am:Z

    goto :goto_0
.end method

.method private P()V
    .locals 3

    const v2, 0x7f090223

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->al:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->am:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090224

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->al:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090222

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->am:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/main/b;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07003e

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/main/b;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private Q()V
    .locals 3

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->T()Lcom/antivirus/ui/main/p;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/main/k;->b:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/main/p;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private R()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/antivirus/ui/main/c;->Y:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    sget-object v2, Lcom/antivirus/ui/main/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x7d0

    const/16 v3, 0x9

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09020e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/antivirus/ui/main/n;->a:Lcom/antivirus/ui/main/n;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->U()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SCAN_STATUS_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "SCAN_STATUS_BROADCAST_EXTRA"

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private S()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/antivirus/ui/main/c;->Y:Z

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/antivirus/ui/main/n;->b:Lcom/antivirus/ui/main/n;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->U()V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->r()V

    return-void
.end method

.method private T()Lcom/antivirus/ui/main/p;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/main/p;->a:Lcom/antivirus/ui/main/p;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    iget-wide v0, v0, Lcom/antivirus/core/scanners/h;->b:J

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v2}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/antivirus/ui/main/p;->c:Lcom/antivirus/ui/main/p;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    sget-object v0, Lcom/antivirus/ui/main/p;->a:Lcom/antivirus/ui/main/p;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    sget-object v0, Lcom/antivirus/ui/main/p;->b:Lcom/antivirus/ui/main/p;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/antivirus/ui/main/p;->a:Lcom/antivirus/ui/main/p;

    goto :goto_0
.end method

.method private U()V
    .locals 9

    const-wide/16 v7, 0x0

    const v6, 0x7f09021b

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/main/HandheldMainActivity;

    iget-object v0, v0, Lcom/antivirus/ui/main/HandheldMainActivity;->n:Lcom/antivirus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/main/HandheldMainActivity;

    iget-object v0, v0, Lcom/antivirus/ui/main/HandheldMainActivity;->n:Lcom/antivirus/a;

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    iget-wide v0, v0, Lcom/antivirus/core/scanners/h;->b:J

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v2}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v2

    iget-object v3, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09021f

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/antivirus/ui/main/p;->c:Lcom/antivirus/ui/main/p;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/c;->a(Lcom/antivirus/ui/main/p;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090220

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    cmp-long v3, v7, v0

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/antivirus/ui/main/p;->a:Lcom/antivirus/ui/main/p;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/c;->a(Lcom/antivirus/ui/main/p;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_1

    cmp-long v2, v7, v0

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f090221

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/antivirus/ui/main/p;->b:Lcom/antivirus/ui/main/p;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/c;->a(Lcom/antivirus/ui/main/p;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/antivirus/ui/main/c;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/main/c;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/antivirus/ui/main/p;)V
    .locals 3

    sget-object v0, Lcom/antivirus/ui/main/k;->b:[I

    invoke-virtual {p1}, Lcom/antivirus/ui/main/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09021e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/antivirus/ui/main/n;->b:Lcom/antivirus/ui/main/n;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09020e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/antivirus/ui/main/n;->a:Lcom/antivirus/ui/main/n;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->Y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    iput-boolean v5, p0, Lcom/antivirus/ui/main/c;->Y:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    sget-object v2, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "__SAH"

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/antivirus/ui/main/o;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/main/o;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x7d0

    invoke-static {v1, v2, v5, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09023c

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09019a

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/antivirus/ui/main/n;->c:Lcom/antivirus/ui/main/n;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->M()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/antivirus/ui/main/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->Y:Z

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Lcom/antivirus/ui/main/c;->g:I

    return p0
.end method

.method static synthetic b(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/avg/tuneup/j;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/avg/tuneup/j;->o()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/antivirus/ui/main/c;->al:Z

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->P()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/antivirus/ui/main/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->S()V

    return-void
.end method

.method static synthetic d(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/main/c;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/antivirus/ui/main/c;)Lcom/antivirus/ui/main/l;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aj:Lcom/antivirus/ui/main/l;

    return-object v0
.end method

.method static synthetic i(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/antivirus/ui/main/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public F()Z
    .locals 4

    const v3, 0x7f020082

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    const v2, 0x7f020081

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    new-instance v1, Lcom/antivirus/applocker/c;

    invoke-direct {v1}, Lcom/antivirus/applocker/c;-><init>()V

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    invoke-virtual {v0, v3}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1, v2}, Lcom/antivirus/applocker/c;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v1

    iget-object v1, v1, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    sget-object v2, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090226

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public G()V
    .locals 4

    new-instance v0, Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v3, 0x7f080043

    invoke-direct {v0, v1, v2, v3}, Lcom/antivirus/ui/main/b;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900e9

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setUpperText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->H()V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    new-instance v1, Lcom/antivirus/ui/main/g;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/main/g;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public H()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/main/l;->a:Lcom/antivirus/ui/main/l;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->aj:Lcom/antivirus/ui/main/l;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/antivirus/ui/main/l;->b:Lcom/antivirus/ui/main/l;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->aj:Lcom/antivirus/ui/main/l;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090225

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public I()V
    .locals 4

    new-instance v0, Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v3, 0x7f080041

    invoke-direct {v0, v1, v2, v3}, Lcom/antivirus/ui/main/b;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09020f

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setUpperText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    new-instance v1, Lcom/antivirus/ui/main/h;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/main/h;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public J()V
    .locals 4

    new-instance v0, Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v3, 0x7f080042

    invoke-direct {v0, v1, v2, v3}, Lcom/antivirus/ui/main/b;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900c6

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setUpperText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    new-instance v1, Lcom/antivirus/ui/main/i;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/main/i;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avg/tuneup/battery/b;-><init>(I)V

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ak:Lcom/avg/tuneup/battery/b;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->an:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/ui/main/j;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/main/j;-><init>(Lcom/antivirus/ui/main/c;)V

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->an:Landroid/os/Handler;

    :cond_0
    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->O()V

    return-void
.end method

.method public K()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/antivirus/ui/main/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/antivirus/ui/main/m;-><init>(Lcom/antivirus/ui/main/c;Lcom/antivirus/ui/main/d;)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/main/b;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/main/m;->a(Lcom/antivirus/ui/main/m;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/main/b;->getLowerText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/main/m;->a(Lcom/antivirus/ui/main/m;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/antivirus/ui/main/c;->Y:Z

    invoke-static {v0, v1}, Lcom/antivirus/ui/main/m;->a(Lcom/antivirus/ui/main/m;Z)Z

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    invoke-static {v0, v1}, Lcom/antivirus/ui/main/m;->a(Lcom/antivirus/ui/main/m;Lcom/antivirus/ui/main/n;)Lcom/antivirus/ui/main/n;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/main/m;->b(Lcom/antivirus/ui/main/m;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/main/m;->c(Lcom/antivirus/ui/main/m;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030009

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/antivirus/ui/main/d;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/main/d;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ab:Landroid/widget/Button;

    new-instance v1, Lcom/antivirus/ui/main/e;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/main/e;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->I()V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->J()V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->G()V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->a()V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/ui/general/c/i;->a(Landroid/view/Display;)I

    move-result v0

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->i()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_2

    const/16 v1, 0xa0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/main/b;->getLowerTextSizeInPx()F

    move-result v0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->N()V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x78

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/main/b;->getLowerTextSizeInPx()F

    move-result v0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ad:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ah:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ai:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    invoke-virtual {v1, v3, v0}, Lcom/antivirus/ui/main/b;->a(IF)V

    goto :goto_1
.end method

.method public a()V
    .locals 4

    new-instance v0, Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    const v3, 0x7f080044

    invoke-direct {v0, v1, v2, v3}, Lcom/antivirus/ui/main/b;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090210

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setUpperText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ae:Lcom/antivirus/ui/main/b;

    new-instance v1, Lcom/antivirus/ui/main/f;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/main/f;-><init>(Lcom/antivirus/ui/main/c;)V

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/main/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/c;->c(Z)V

    new-instance v0, Lcom/antivirus/core/scanners/h;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/h;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/h;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lcc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/antivirus/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-class v3, Lcom/antivirus/ui/main/ActivationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "lcc"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/avg/toolkit/e/g;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v1, v2}, Lcom/avg/toolkit/e/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/avg/toolkit/e/g;->a()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/avg/toolkit/e/g;->b()V

    :cond_2
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-class v3, Lcom/avg/ui/license/EnterLicenseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "lcc"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090020

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "firest_edit_text"

    iget-object v2, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090023

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/main/c;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/antivirus/core/scanners/h;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/ui/main/c;->h:Lcom/antivirus/core/scanners/h;

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->Y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->M()V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->Y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->R()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "avmsStartScan"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ScannerClient"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v1, "ScannerClient"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "StartedFromWidget"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/antivirus/ui/main/c;->Z:Z

    const-string v1, "StartedFromWidget"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "avmsStartScan"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/c;->a(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->Q()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/antivirus/ui/main/n;->a:Lcom/antivirus/ui/main/n;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/c;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "category_app_landing"

    const-string v2, "action_scan_now"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/antivirus/ui/main/n;->b:Lcom/antivirus/ui/main/n;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ScannerClient"

    sget-object v2, Lcom/antivirus/ui/main/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v2}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/c;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "category_app_landing"

    const-string v2, "action_view_scan_results"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/antivirus/ui/main/n;->c:Lcom/antivirus/ui/main/n;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->R()V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "category_app_landing"

    const-string v2, "action_stop_scan"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->f:Landroid/widget/ProgressBar;

    sget v1, Lcom/antivirus/ui/main/c;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->aa:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/c;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public r()V
    .locals 7

    const/16 v6, 0x8

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "category_app_landing"

    const-string v3, "action_opened_from_notification"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ak:Lcom/avg/tuneup/battery/b;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->an:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ak:Lcom/avg/tuneup/battery/b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/antivirus/ui/main/n;->c:Lcom/antivirus/ui/main/n;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ac:Lcom/antivirus/ui/main/n;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->Y:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->U()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/antivirus/ui/main/c;->O()V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->H()V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/c;->F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/ui/main/c;->a:Z

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/c;->b(Landroid/content/Intent;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/antivirus/ui/main/c;->Y:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/main/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/main/c;->ak:Lcom/avg/tuneup/battery/b;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/antivirus/ui/main/c;->ak:Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->s()V

    return-void
.end method
