.class public Lorg/antivirus/ui/protection/FileScannerActivity;
.super Lorg/antivirus/ui/BaseToolListActivity;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Lorg/antivirus/AVService$LocalBinder;

.field private final c:[Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Lorg/antivirus/ui/protection/l;

.field private j:Ljava/util/LinkedList;

.field private k:Z

.field private l:Lorg/antivirus/core/scanners/ScannerFilesResult;

.field private m:I

.field private n:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SDCard"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Root"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Pictures"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Music"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Video"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->c:[Ljava/lang/String;

    const-string v0, "/Music"

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->f:Ljava/lang/String;

    const-string v0, "/Video"

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->g:Ljava/lang/String;

    new-instance v0, Lorg/antivirus/ui/protection/f;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/protection/f;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->n:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/protection/FileScannerActivity;)Lorg/antivirus/ui/protection/l;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->i:Lorg/antivirus/ui/protection/l;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/protection/FileScannerActivity;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->i:Lorg/antivirus/ui/protection/l;

    invoke-virtual {v0, p1}, Lorg/antivirus/ui/protection/l;->b(Ljava/lang/String;)V

    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->k:Z

    const-string v1, ""

    const v0, 0x7f09001f

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lorg/antivirus/ui/protection/h;

    invoke-direct {v5, p0}, Lorg/antivirus/ui/protection/h;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->a:Landroid/app/ProgressDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lorg/antivirus/ui/protection/i;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/i;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    invoke-direct {v1}, Lorg/antivirus/core/scanners/ScannerFilesConfig;-><init>()V

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lorg/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/antivirus/core/scanners/ScannerFilesConfig;->c:Ljava/lang/Boolean;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    sget-object v3, Lorg/antivirus/core/scanners/c;->b:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "__SAH"

    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->h:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "ScannerConfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lorg/antivirus/ui/protection/FileScannerActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->k:Z

    return v0
.end method

.method static synthetic d(Lorg/antivirus/ui/protection/FileScannerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->k:Z

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DCIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lorg/antivirus/ui/protection/FileScannerActivity;->f()V

    iget-object v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->i:Lorg/antivirus/ui/protection/l;

    invoke-virtual {v1}, Lorg/antivirus/ui/protection/l;->notifyDataSetChanged()V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090038

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->b:Lorg/antivirus/AVService$LocalBinder;

    sget-object v3, Lorg/antivirus/core/scanners/c;->b:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v3}, Lorg/antivirus/AVService$LocalBinder;->getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iput-object v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->l:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->l:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->l:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget v1, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->l:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f090039

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f09003a

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-lez v0, :cond_0

    const v1, 0x7f09003f

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/antivirus/ui/protection/j;

    invoke-direct {v3, p0, v0}, Lorg/antivirus/ui/protection/j;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;I)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090026

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/protection/k;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/k;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const v0, 0x7f0200b8

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void

    :cond_0
    const v0, 0x7f090003

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/protection/b;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/b;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    move v1, v0

    goto/16 :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->m:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ScannerResult"

    iget-object v2, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->l:Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic g(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090183

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090184

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/protection/c;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/protection/c;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic h(Lorg/antivirus/ui/protection/FileScannerActivity;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->j:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic i(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/protection/FileScannerActivity;->f()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->k:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->n:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/antivirus/ui/protection/FileScannerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Lorg/antivirus/ui/protection/a;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/protection/a;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->h:Landroid/os/Handler;

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->setContentView(I)V

    const v0, 0x7f02000c

    const v1, 0x7f02000d

    const v2, 0x7f09003b

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/antivirus/ui/protection/FileScannerActivity;->a(IILjava/lang/String;Z)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->j:Ljava/util/LinkedList;

    new-instance v0, Lorg/antivirus/ui/protection/l;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/ui/protection/l;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->i:Lorg/antivirus/ui/protection/l;

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->i:Lorg/antivirus/ui/protection/l;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->c:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lorg/antivirus/ui/protection/g;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/g;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/FileScannerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/protection/d;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/d;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090010

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/antivirus/ui/protection/e;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/e;-><init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/compatibility/DonutTools;->getDisplayDensity(Landroid/view/Display;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->m:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onDestroy()V

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->n:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->n:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/protection/FileScannerActivity;->n:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method
