.class public Lcom/antivirus/ui/protection/aj;
.super Lcom/antivirus/ui/a/a/a;


# static fields
.field private static ae:I

.field public static g:Lcom/antivirus/core/scanners/c;


# instance fields
.field private Y:Z

.field private Z:Ljava/lang/String;

.field public a:Landroid/widget/TextView;

.field private aa:Lcom/antivirus/core/scanners/h;

.field private ab:Landroid/view/View;

.field private ac:Lcom/antivirus/ui/protection/am;

.field private ad:Z

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ProgressBar;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/Button;

.field private h:Landroid/view/View;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    sput-object v0, Lcom/antivirus/ui/protection/aj;->g:Lcom/antivirus/core/scanners/c;

    const/4 v0, 0x0

    sput v0, Lcom/antivirus/ui/protection/aj;->ae:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    sget-object v0, Lcom/antivirus/ui/protection/am;->a:Lcom/antivirus/ui/protection/am;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    iput-boolean v1, p0, Lcom/antivirus/ui/protection/aj;->ad:Z

    return-void
.end method

.method static synthetic F()I
    .locals 1

    sget v0, Lcom/antivirus/ui/protection/aj;->ae:I

    return v0
.end method

.method private G()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/antivirus/ui/protection/am;->b:Lcom/antivirus/ui/protection/am;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->H()V

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/aj;->r()V

    return-void
.end method

.method private H()V
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    invoke-static {v1}, Lcom/antivirus/ui/tablet/c;->a(Lcom/antivirus/core/scanners/h;)Lcom/antivirus/ui/tablet/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/e;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v0, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v0, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    iget-wide v0, v0, Lcom/antivirus/core/scanners/h;->b:J

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v2}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09021f

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/antivirus/ui/protection/ao;->c:Lcom/antivirus/ui/protection/ao;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/protection/aj;->a(Lcom/antivirus/ui/protection/ao;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

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

    cmp-long v3, v8, v0

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09021b

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/antivirus/ui/protection/ao;->a:Lcom/antivirus/ui/protection/ao;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/protection/aj;->a(Lcom/antivirus/ui/protection/ao;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_1

    cmp-long v2, v8, v0

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

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

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09023e

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/antivirus/ui/protection/ao;->b:Lcom/antivirus/ui/protection/ao;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/protection/aj;->a(Lcom/antivirus/ui/protection/ao;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private I()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3fc0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private J()V
    .locals 6

    const v1, 0x7f090150

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    iget-boolean v0, v0, Lcom/avg/ui/general/a/a;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v0, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/antivirus/ui/protection/an;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/protection/an;-><init>(Lcom/antivirus/ui/protection/aj;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sget-object v3, Lcom/antivirus/core/scanners/n;->b:Lcom/antivirus/core/scanners/n;

    sget-object v4, Lcom/antivirus/ui/main/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v2, v3, v4}, Lcom/antivirus/a;->a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;Lcom/antivirus/core/scanners/c;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f090042

    :goto_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

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
    iget-boolean v0, p0, Lcom/antivirus/ui/protection/aj;->ad:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/antivirus/ui/protection/aj;->ad:Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->G()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private K()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    sget-object v2, Lcom/antivirus/ui/protection/aj;->g:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x7d0

    const/16 v3, 0x9

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09020e

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->I()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/antivirus/ui/protection/am;->a:Lcom/antivirus/ui/protection/am;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->H()V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/aj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/aj;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/antivirus/ui/protection/ao;)V
    .locals 6

    const/16 v5, 0x8

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->I()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/protection/al;->a:[I

    invoke-virtual {p1}, Lcom/antivirus/ui/protection/ao;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/h;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f09021f

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09021e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/antivirus/ui/protection/am;->b:Lcom/antivirus/ui/protection/am;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f090220

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09020e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/antivirus/ui/protection/am;->a:Lcom/antivirus/ui/protection/am;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/aj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Lcom/antivirus/ui/protection/aj;->ae:I

    return p0
.end method

.method static synthetic b(Lcom/antivirus/ui/protection/aj;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->G()V

    return-void
.end method

.method static synthetic c(Lcom/antivirus/ui/protection/aj;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/ui/protection/aj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/protection/aj;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    const v1, 0x7f080100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    const v1, 0x7f0800fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    const v1, 0x7f080101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    new-instance v1, Lcom/antivirus/ui/protection/ak;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/ak;-><init>(Lcom/antivirus/ui/protection/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->h:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/antivirus/ui/protection/am;->a:Lcom/antivirus/ui/protection/am;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/aj;->a(Z)V

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    sget-object v1, Lcom/antivirus/ui/tablet/e;->d:Lcom/antivirus/ui/tablet/e;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/e;)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_landing"

    const-string v2, "scan_now"

    invoke-static {v0, v1, v2, v5, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/antivirus/ui/protection/am;->b:Lcom/antivirus/ui/protection/am;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/antivirus/ui/scan/results/m;

    invoke-direct {v0}, Lcom/antivirus/ui/scan/results/m;-><init>()V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0800bc

    const-string v3, "ScanResultsFragment"

    invoke-virtual {v1, v0, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_landing"

    const-string v2, "view_scan_results"

    invoke-static {v0, v1, v2, v5, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->d(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/antivirus/ui/protection/am;->c:Lcom/antivirus/ui/protection/am;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->K()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_landing"

    const-string v2, "stop_scan"

    invoke-static {v0, v1, v2, v5, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/aj;->c(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->p()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/scanners/h;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/h;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/antivirus/core/scanners/h;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/ui/protection/aj;->aa:Lcom/antivirus/core/scanners/h;

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->J()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    sget-object v1, Lcom/antivirus/ui/tablet/e;->d:Lcom/antivirus/ui/tablet/e;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/e;)V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iput-boolean v6, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    sget-object v2, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "__SAH"

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/antivirus/ui/protection/an;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/protection/an;-><init>(Lcom/antivirus/ui/protection/aj;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x7d0

    invoke-static {v1, v2, v6, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ab:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09019a

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/antivirus/ui/protection/am;->c:Lcom/antivirus/ui/protection/am;

    iput-object v0, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->J()V

    goto :goto_1
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

    iput-boolean v1, p0, Lcom/antivirus/ui/protection/aj;->ad:Z

    const-string v1, "StartedFromWidget"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "avmsStartScan"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/aj;->a(Z)V

    :cond_1
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mUpdatingTv"

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public r()V
    .locals 7

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "app_landing"

    const-string v3, "opened_from_notification"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/aj;->b(Landroid/content/Intent;)V

    sget-object v0, Lcom/antivirus/ui/protection/am;->c:Lcom/antivirus/ui/protection/am;

    iget-object v1, p0, Lcom/antivirus/ui/protection/aj;->ac:Lcom/antivirus/ui/protection/am;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/protection/aj;->H()V

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/aj;->Y:Z

    if-nez v0, :cond_3

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/aj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
