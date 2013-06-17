.class public Lcom/avg/ui/general/d/b;
.super Lcom/avg/ui/general/fragments/a;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private Y:Z

.field private Z:Landroid/content/BroadcastReceiver;

.field private a:Landroid/view/View;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/avg/ui/general/d/g;

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/os/Handler;

.field private f:Landroid/app/AlertDialog;

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/content/IntentFilter;

.field private i:Lcom/avg/toolkit/e/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/a;-><init>()V

    iput-object v2, p0, Lcom/avg/ui/general/d/b;->a:Landroid/view/View;

    iput-object v2, p0, Lcom/avg/ui/general/d/b;->b:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/avg/ui/general/d/b;->d:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/avg/ui/general/d/b;->f:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/avg/ui/general/d/b;->g:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "inAppIntentFilterScreen"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->h:Landroid/content/IntentFilter;

    iput-object v2, p0, Lcom/avg/ui/general/d/b;->i:Lcom/avg/toolkit/e/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/ui/general/d/b;->Y:Z

    new-instance v0, Lcom/avg/ui/general/d/c;

    invoke-direct {v0, p0}, Lcom/avg/ui/general/d/c;-><init>(Lcom/avg/ui/general/d/b;)V

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->Z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private H()V
    .locals 4

    new-instance v0, Lcom/avg/ui/general/d/g;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/avg/ui/general/d/b;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/avg/ui/general/d/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/avg/ui/general/d/g;-><init>(Lcom/avg/ui/general/d/b;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->c:Lcom/avg/ui/general/d/g;

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->a:Landroid/view/View;

    sget v1, Lcom/avg/ui/general/d;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->c:Lcom/avg/ui/general/d/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->Z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private J()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/ui/general/g;->ias_alert_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/ui/general/n;->b:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/ui/general/g;->ias_alert_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/ui/general/g;->ok:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avg/ui/general/d/f;

    invoke-direct {v2, p0}, Lcom/avg/ui/general/d/f;-><init>(Lcom/avg/ui/general/d/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->f:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->f:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/avg/ui/general/d/b;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/avg/toolkit/UID/a;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Lcom/avg/toolkit/UID/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    const-string v1, "%s?device_sn=%s&varCode=%s&fs=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget v3, v3, Lcom/avg/toolkit/e/a;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget v3, v3, Lcom/avg/toolkit/e/a;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

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

    :goto_0
    new-instance v1, Lcom/avg/ui/general/b/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/ui/general/g;->title_help_preference:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v4, Lcom/avg/ui/general/g;->summary_intent_preference:I

    invoke-virtual {v3, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/avg/ui/general/c;->online_help:I

    invoke-direct {v1, v0, v3, v4, v6}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/ui/general/g;->tos:I

    invoke-virtual {v1, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v4, Lcom/avg/ui/general/g;->tos_summary:I

    invoke-virtual {v3, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/avg/ui/general/c;->tos:I

    const/4 v5, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/ui/general/g;->avg_title:I

    invoke-virtual {v1, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v4, Lcom/avg/ui/general/g;->avg_summary:I

    invoke-virtual {v3, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/avg/ui/general/c;->avg_icon_list:I

    const/4 v5, 0x2

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/ui/general/g;->ias_help_contact_header:I

    invoke-virtual {v1, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v4, Lcom/avg/ui/general/g;->ias_help_contact_body:I

    invoke-virtual {v3, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/avg/ui/general/c;->help_support_email:I

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/avg/ui/general/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/d/b;->I()V

    return-void
.end method

.method static synthetic c(Lcom/avg/ui/general/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/d/b;->J()V

    return-void
.end method

.method static synthetic d(Lcom/avg/ui/general/d/b;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->f:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->Z:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/avg/ui/general/d/b;->h:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avg/ui/general/d/b;->G()V

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v4, Lcom/avg/ui/general/g;->ias_progress_dialog_title:I

    invoke-virtual {v2, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v5, Lcom/avg/ui/general/d/d;

    invoke-direct {v5, p0}, Lcom/avg/ui/general/d/d;-><init>(Lcom/avg/ui/general/d/b;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->g:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->e:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/avg/ui/general/d/e;

    invoke-direct {v0, p0}, Lcom/avg/ui/general/d/e;-><init>(Lcom/avg/ui/general/d/b;)V

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->d:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected G()V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/ui/general/d/h;->e(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/avg/ui/general/e;->listview_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/avg/ui/general/d/b;->H()V

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->a:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->s()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/general/d/b;->i:Lcom/avg/toolkit/e/a;

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const/16 v7, 0x1b5a

    const/16 v6, 0x1b58

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->c:Lcom/avg/ui/general/d/g;

    invoke-virtual {v1, p3}, Lcom/avg/ui/general/d/g;->a(I)V

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->c:Lcom/avg/ui/general/d/g;

    invoke-virtual {v1}, Lcom/avg/ui/general/d/g;->notifyDataSetChanged()V

    long-to-int v1, p4

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/ui/general/g;->ias_alert_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->a(I)V

    :goto_1
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "help"

    const-string v2, "online_help"

    invoke-static {v0, v1, v2, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    const-string v2, "/help.html"

    invoke-direct {p0, v2}, Lcom/avg/ui/general/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v6, v7, v0}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/ui/general/g;->ias_alert_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v4}, Lcom/avg/ui/general/a/a;->a(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "help"

    const-string v2, "terms_of_service"

    invoke-static {v0, v1, v2, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->i:Lcom/avg/toolkit/e/a;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__SAD"

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->i:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "/tospro.html"

    invoke-direct {p0, v0}, Lcom/avg/ui/general/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0, v6, v7, v1}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    const-string v0, "/tos.html"

    invoke-direct {p0, v0}, Lcom/avg/ui/general/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/ui/general/g;->ias_alert_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->a(I)V

    :goto_4
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "help"

    const-string v2, "avg"

    invoke-static {v0, v1, v2, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://www.avg.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/avg/ui/general/d/b;->a(Landroid/content/Intent;)V

    goto :goto_4

    :pswitch_3
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/ui/general/g;->ias_alert_dialog_message:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->a(I)V

    :goto_5
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "help"

    const-string v2, "contact_us"

    invoke-static {v0, v1, v2, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/avg/ui/general/d/b;->F()V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public r()V
    .locals 1

    iget-boolean v0, p0, Lcom/avg/ui/general/d/b;->Y:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avg/ui/general/d/b;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/ui/general/d/b;->Y:Z

    :cond_0
    invoke-super {p0}, Lcom/avg/ui/general/fragments/a;->r()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/general/d/b;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/ui/general/d/b;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lcom/avg/ui/general/d/b;->I()V

    invoke-super {p0}, Lcom/avg/ui/general/fragments/a;->t()V

    return-void
.end method
