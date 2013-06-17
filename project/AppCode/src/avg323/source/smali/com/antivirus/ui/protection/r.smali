.class public Lcom/antivirus/ui/protection/r;
.super Lcom/antivirus/ui/a/a/a;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static b:Z


# instance fields
.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field a:Landroid/content/BroadcastReceiver;

.field private aa:Ljava/lang/String;

.field private ab:I

.field private ac:Z

.field private ad:[Lcom/antivirus/ui/protection/ah;

.field private ae:Ljava/lang/Runnable;

.field private ah:Landroid/content/BroadcastReceiver;

.field private c:Landroid/view/View;

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/View;

.field private f:Landroid/app/AlertDialog;

.field private g:Landroid/app/AlertDialog;

.field private h:Lcom/antivirus/core/scanners/h;

.field private i:Lcom/antivirus/ui/protection/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/antivirus/ui/protection/r;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->d:Landroid/os/Handler;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->f:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->h:Lcom/antivirus/core/scanners/h;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->Y:Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->Z:Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->aa:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/protection/r;->ac:Z

    new-instance v0, Lcom/antivirus/ui/protection/s;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/protection/s;-><init>(Lcom/antivirus/ui/protection/r;)V

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->ae:Ljava/lang/Runnable;

    new-instance v0, Lcom/antivirus/ui/protection/u;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/protection/u;-><init>(Lcom/antivirus/ui/protection/r;)V

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->ah:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/antivirus/ui/protection/w;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/protection/w;-><init>(Lcom/antivirus/ui/protection/r;)V

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic B(Lcom/antivirus/ui/protection/r;)[Lcom/antivirus/ui/protection/ah;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ad:[Lcom/antivirus/ui/protection/ah;

    return-object v0
.end method

.method static synthetic C(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic D(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic E(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    return-object v0
.end method

.method static synthetic F(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    return-object v0
.end method

.method private F()V
    .locals 6

    const v5, 0x7f07003e

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->h:Lcom/antivirus/core/scanners/h;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/h;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->h:Lcom/antivirus/core/scanners/h;

    iget-wide v1, v0, Lcom/antivirus/core/scanners/h;->b:J

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09020e

    invoke-static {v0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "SCAN_STATUS_EXTRA"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/ui/protection/r;->ac:Z

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/r;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090042

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/antivirus/ui/protection/r;->ab:I

    :goto_0
    return-void

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09021b

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/antivirus/ui/protection/r;->ab:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09021d

    invoke-static {v0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    iput v3, p0, Lcom/antivirus/ui/protection/r;->ab:I

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->h:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v3}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'#ff0000\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f090220

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</font>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f09021e

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/antivirus/ui/protection/r;->Z:Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v5, 0x7f09021c

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->Y:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic G(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    return-object v0
.end method

.method private G()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->c:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/antivirus/ui/protection/ai;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/antivirus/ui/protection/r;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/antivirus/ui/protection/ai;-><init>(Lcom/antivirus/ui/protection/r;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private H()I
    .locals 5

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v1}, Lcom/antivirus/core/b;->g()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/32 v3, 0x240c8400

    cmp-long v3, v3, v1

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method static synthetic H(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    return-object v0
.end method

.method static synthetic I(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    return-object v0
.end method

.method private I()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v4, "protection"

    const-string v5, "safe_web_surfing"

    if-eqz v0, :cond_1

    const-string v2, "on"

    :goto_1
    invoke-static {v3, v4, v5, v2, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->e(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0xbb8

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "off"

    goto :goto_1
.end method

.method private J()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/antivirus/c;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->K()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0x7d0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v0, v4}, Lcom/antivirus/core/b;->c(Z)V

    invoke-static {v4}, Lcom/antivirus/c;->i(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "protection"

    const-string v2, "scan_sms"

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->c(Z)V

    invoke-static {v1}, Lcom/antivirus/c;->i(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "protection"

    const-string v2, "scan_sms"

    const-string v3, "on"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private K()V
    .locals 4

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/r;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900e5

    invoke-virtual {p0, v2}, Lcom/antivirus/ui/protection/r;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0901f7

    invoke-virtual {p0, v2}, Lcom/antivirus/ui/protection/r;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v2, 0x7f0901a0

    new-instance v3, Lcom/antivirus/ui/protection/ab;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/protection/ab;-><init>(Lcom/antivirus/ui/protection/r;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0901a1

    new-instance v3, Lcom/antivirus/ui/protection/ac;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/protection/ac;-><init>(Lcom/antivirus/ui/protection/r;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/protection/ad;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/ui/protection/ad;-><init>(Lcom/antivirus/ui/protection/r;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private L()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0901a3

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0901a2

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900e8

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[appname]"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/antivirus/core/b;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f0900e7

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/antivirus/core/b;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f02016f

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000d

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/antivirus/ui/protection/ae;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/protection/ae;-><init>(Lcom/antivirus/ui/protection/r;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->f:Landroid/app/AlertDialog;

    return-void
.end method

.method private M()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f02016d

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/r;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900e4

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090005

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090006

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/protection/ag;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/protection/ag;-><init>(Lcom/antivirus/ui/protection/r;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->f:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09023c

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f03002f

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/protection/r;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->e:Landroid/view/View;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09002a

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sput-boolean v3, Lcom/antivirus/ui/protection/r;->b:Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0xfa0

    const/16 v2, 0x7d4

    invoke-static {v0, v1, v2, v5}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "droidsec.com.update"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->d:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->d:Landroid/os/Handler;

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ae:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/r;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/r;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/r;->e:Landroid/view/View;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11

    const/4 v0, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/antivirus/ui/protection/r;->ad:[Lcom/antivirus/ui/protection/ah;

    array-length v9, v8

    move v6, v0

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v0, v8, v6

    sget-object v1, Lcom/antivirus/ui/protection/t;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ah;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/antivirus/core/b;

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/avg/ui/general/b/c;

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f0900e3

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v10, 0x7f0900da

    invoke-static {v5, v10}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/antivirus/core/b;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f02016e

    invoke-direct {v1, v3, v0, v2}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :pswitch_1
    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->Z:Ljava/lang/String;

    iget v2, p0, Lcom/antivirus/ui/protection/r;->ab:I

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->Y:Ljava/lang/String;

    const/4 v4, 0x1

    const v5, 0x7f020114

    invoke-direct/range {v0 .. v5}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->H()I

    move-result v1

    aget-object v0, v0, v1

    new-instance v1, Lcom/avg/ui/general/b/c;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f0900dc

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020065

    invoke-direct {v1, v2, v0, v3}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09010c

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09010d

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200f3

    invoke-direct {v0, v1, v2, v3}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090178

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090179

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013b

    iget-object v4, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v4}, Lcom/antivirus/core/b;->v()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901b3

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f0901b4

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013d

    iget-object v4, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v4}, Lcom/antivirus/core/b;->i()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900e5

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f0900e6

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02010e

    iget-object v4, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v4}, Lcom/antivirus/core/b;->n()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090231

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090232

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013c

    iget-object v4, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v4}, Lcom/antivirus/core/b;->o()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/protection/r;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/r;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/protection/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/antivirus/ui/protection/r;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/protection/r;->ac:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/antivirus/ui/protection/r;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/antivirus/ui/protection/r;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/r;->f:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private b(I)V
    .locals 10

    const-wide/32 v8, 0x240c8400

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v2}, Lcom/antivirus/core/b;->g()J

    move-result-wide v2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    cmp-long v2, v8, v2

    if-eqz v2, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v1, v8, v9}, Lcom/antivirus/core/b;->e(J)V

    move v1, v0

    :goto_1
    :try_start_0
    new-instance v0, Lcom/antivirus/core/b;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v2}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/antivirus/core/b;->d(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    invoke-static {}, Lcom/antivirus/c;->n()V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ad:[Lcom/antivirus/ui/protection/ah;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/protection/ah;->c:Lcom/antivirus/ui/protection/ah;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/r;->i()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    invoke-virtual {v2, v0}, Lcom/antivirus/ui/protection/ai;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/c;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0x7d0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_1
    return-void

    :pswitch_1
    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    :goto_3
    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v1, v6, v7}, Lcom/antivirus/core/b;->e(J)V

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    :goto_4
    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v1, v4, v5}, Lcom/antivirus/core/b;->e(J)V

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/protection/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->F()V

    return-void
.end method

.method static synthetic f(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/ui/protection/ai;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/ui/protection/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/antivirus/ui/protection/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/antivirus/ui/protection/r;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/protection/r;->ab:I

    return v0
.end method

.method static synthetic j(Lcom/antivirus/ui/protection/r;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/antivirus/ui/protection/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->aa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic r(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic s(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic t(Lcom/antivirus/ui/protection/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->L()V

    return-void
.end method

.method static synthetic u(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic v(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic w(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic x(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic y(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    return-object v0
.end method

.method static synthetic z(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030030

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->c:Landroid/view/View;

    :goto_1
    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->G()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->c:Landroid/view/View;

    goto :goto_0

    :cond_1
    const v0, 0x7f03002b

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->c:Landroid/view/View;

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ah:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "SCAN_STATUS_BROADCAST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->p()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/scanners/h;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/h;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->h:Lcom/antivirus/core/scanners/h;

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->F()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchFormWidget"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->M()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0xfa0

    const/16 v2, 0x1771

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchFormWidget"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/antivirus/ui/protection/ah;

    sget-object v1, Lcom/antivirus/ui/protection/ah;->a:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/protection/ah;->c:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v5

    sget-object v1, Lcom/antivirus/ui/protection/ah;->d:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v6

    sget-object v1, Lcom/antivirus/ui/protection/ah;->e:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v7

    sget-object v1, Lcom/antivirus/ui/protection/ah;->f:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/antivirus/ui/protection/ah;->h:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->ad:[Lcom/antivirus/ui/protection/ah;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/ui/general/c/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/antivirus/ui/protection/ah;

    sget-object v1, Lcom/antivirus/ui/protection/ah;->a:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/protection/ah;->b:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v5

    sget-object v1, Lcom/antivirus/ui/protection/ah;->c:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v6

    sget-object v1, Lcom/antivirus/ui/protection/ah;->d:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v7

    sget-object v1, Lcom/antivirus/ui/protection/ah;->e:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/antivirus/ui/protection/ah;->f:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/antivirus/ui/protection/ah;->h:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->ad:[Lcom/antivirus/ui/protection/ah;

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/antivirus/ui/protection/ah;

    sget-object v1, Lcom/antivirus/ui/protection/ah;->a:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/protection/ah;->b:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v5

    sget-object v1, Lcom/antivirus/ui/protection/ah;->c:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v6

    sget-object v1, Lcom/antivirus/ui/protection/ah;->d:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v7

    sget-object v1, Lcom/antivirus/ui/protection/ah;->e:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/antivirus/ui/protection/ah;->f:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/antivirus/ui/protection/ah;->g:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/antivirus/ui/protection/ah;->h:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/antivirus/ui/protection/r;->ad:[Lcom/antivirus/ui/protection/ah;

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/antivirus/ui/protection/r;->f:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/antivirus/ui/protection/r;->g:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/antivirus/ui/protection/r;->e:Landroid/view/View;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->d()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/protection/r;->ah:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/r;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/antivirus/ui/protection/t;->a:[I

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ad:[Lcom/antivirus/ui/protection/ah;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Lcom/antivirus/ui/protection/ah;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->M()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0xfa0

    const/16 v3, 0x1771

    invoke-static {v0, v2, v3, v7}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x61a8

    const/16 v3, 0x8

    invoke-static {}, Lcom/antivirus/widget/update/UpdateWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "protection"

    const-string v3, "update_now"

    invoke-static {v0, v2, v3, v7, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/antivirus/ui/protection/r;->ac:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->h:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v2}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "protection"

    const-string v4, "scan_now"

    invoke-static {v2, v3, v4, v7, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-class v3, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "avmsStartScan"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x3400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/protection/r;->a(Landroid/content/Intent;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-class v3, Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ScannerClient"

    sget-object v3, Lcom/antivirus/ui/main/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v3}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/r;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "app_landing"

    const-string v3, "view_scan_results"

    invoke-static {v0, v2, v3, v7, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->d(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/ui/protection/a;

    invoke-direct {v1}, Lcom/antivirus/ui/protection/a;-><init>()V

    const v2, 0x7f0800bc

    const-string v3, "FileScannerFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-class v3, Lcom/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/r;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "protection"

    const-string v3, "file_scanner"

    const-string v4, "permitted"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f0900dd

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0200e3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/avg/ui/general/b/e;

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->H()I

    move-result v4

    iget-object v5, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const v6, 0x7f0b0009

    invoke-static {v5, v6}, Lcom/antivirus/m;->b(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->H()I

    move-result v3

    new-instance v4, Lcom/antivirus/ui/protection/v;

    invoke-direct {v4, p0}, Lcom/antivirus/ui/protection/v;-><init>(Lcom/antivirus/ui/protection/r;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "protection"

    const-string v3, "scan_freq"

    invoke-static {v0, v2, v3, v7, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->J()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/antivirus/ui/protection/r;->I()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v2}, Lcom/antivirus/core/b;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "protection"

    const-string v3, "scan_sd"

    const-string v4, "off"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v2, v0}, Lcom/antivirus/core/b;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "protection"

    const-string v3, "scan_sd"

    const-string v4, "on"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_7
    iget-object v2, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    invoke-virtual {v2}, Lcom/antivirus/core/b;->o()Z

    move-result v2

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->af:Lcom/antivirus/core/b;

    if-nez v2, :cond_4

    :goto_3
    invoke-virtual {v3, v0}, Lcom/antivirus/core/b;->d(Z)V

    iget-object v3, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v4, "protection"

    const-string v5, "enable_pup"

    if-eqz v2, :cond_5

    const-string v0, "off"

    :goto_4
    invoke-static {v3, v4, v5, v0, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->i:Lcom/antivirus/ui/protection/ai;

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const-string v0, "on"

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/r;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-boolean v1, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->p:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->p:Z

    iget-object v0, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->n:Lcom/antivirus/ui/protection/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/protection/aj;->a(Z)V

    :cond_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    return-void
.end method
