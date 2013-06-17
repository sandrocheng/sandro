.class public Lcom/antivirus/ui/protection/a;
.super Lcom/avg/ui/general/fragments/d;


# static fields
.field private static af:Landroid/os/Handler;

.field public static i:Ljava/lang/String;


# instance fields
.field Y:Landroid/app/ProgressDialog;

.field Z:Lcom/antivirus/a;

.field private final aa:[Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private ae:Landroid/view/View;

.field private ag:Lcom/antivirus/ui/protection/n;

.field private ah:Ljava/util/LinkedList;

.field private ai:Z

.field private aj:Lcom/antivirus/core/scanners/ScannerFilesResult;

.field private ak:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "service"

    sput-object v0, Lcom/antivirus/ui/protection/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/d;-><init>()V

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

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->aa:[Ljava/lang/String;

    const-string v0, "/Music"

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->ab:Ljava/lang/String;

    const-string v0, "/Video"

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->ac:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    return-void
.end method

.method private G()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09010c

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/protection/a;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    new-instance v0, Lcom/antivirus/ui/protection/n;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/ui/protection/n;-><init>(Lcom/antivirus/ui/protection/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->ag:Lcom/antivirus/ui/protection/n;

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ag:Lcom/antivirus/ui/protection/n;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/a;->a(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->J()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900e1

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/antivirus/ui/protection/g;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/g;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->O()V

    goto :goto_0
.end method

.method private H()V
    .locals 5

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->L()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const-string v1, "file_scanner"

    const-string v2, "scan"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private I()Ljava/lang/String;
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

.method private J()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v3, 0x1090008

    iget-object v4, p0, Lcom/antivirus/ui/protection/a;->aa:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/antivirus/ui/protection/h;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/h;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private K()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/antivirus/ui/protection/a;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/antivirus/ui/protection/a;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/antivirus/ui/protection/a;->ak:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private L()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/antivirus/ui/protection/a;->ai:Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090042

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lcom/antivirus/ui/protection/k;

    invoke-direct {v5, p0}, Lcom/antivirus/ui/protection/k;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->Y:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->Y:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->Y:Landroid/app/ProgressDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->Y:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/antivirus/ui/protection/l;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/l;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->Y:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    invoke-direct {v1}, Lcom/antivirus/core/scanners/ScannerFilesConfig;-><init>()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/antivirus/core/scanners/ScannerFilesConfig;->c:Ljava/lang/Boolean;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__SAD"

    sget-object v3, Lcom/antivirus/core/scanners/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "__SAH"

    new-instance v3, Landroid/os/Messenger;

    sget-object v4, Lcom/antivirus/ui/protection/a;->af:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "ScannerConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private M()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->K()V

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ag:Lcom/antivirus/ui/protection/n;

    invoke-virtual {v1}, Lcom/antivirus/ui/protection/n;->notifyDataSetChanged()V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090109

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->Z:Lcom/antivirus/a;

    sget-object v3, Lcom/antivirus/core/scanners/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v1, v3}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v1

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iput-object v1, p0, Lcom/antivirus/ui/protection/a;->aj:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->aj:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->aj:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget v1, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->b:I

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->aj:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

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

    iget-object v4, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v5, 0x7f09010a

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

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

    iget-object v4, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v5, 0x7f09010b

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09010f

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/antivirus/ui/protection/m;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/ui/protection/m;-><init>(Lcom/antivirus/ui/protection/a;I)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0900f8

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/protection/c;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/c;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const v0, 0x7f0200e5

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09000d

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/protection/d;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/d;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    move v1, v0

    goto/16 :goto_0
.end method

.method private N()V
    .locals 4

    const/4 v3, 0x4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ScannerResult"

    iget-object v2, p0, Lcom/antivirus/ui/protection/a;->aj:Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x7d0

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method private O()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/ui/general/c/i;->a(Landroid/view/Display;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/antivirus/ui/protection/a;->ak:I

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/protection/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/protection/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ag:Lcom/antivirus/ui/protection/n;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/protection/n;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

.method private a(Z)V
    .locals 5

    const v4, 0x7f09023b

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->k()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    const/4 v1, 0x1

    const/high16 v2, 0x7f03

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(ZI)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/tablet/a;

    invoke-direct {v1, v0}, Lcom/antivirus/ui/tablet/a;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0900e1

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f020021

    new-instance v3, Lcom/antivirus/ui/protection/i;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/protection/i;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/antivirus/ui/tablet/a;->a(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09000e

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f02001f

    new-instance v3, Lcom/antivirus/ui/protection/j;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/protection/j;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/antivirus/ui/tablet/a;->b(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/tablet/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->k()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/tablet/a;

    invoke-direct {v1, v0}, Lcom/antivirus/ui/tablet/a;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/tablet/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(ZI)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/protection/a;->ai:Z

    return p1
.end method

.method static synthetic b(Lcom/antivirus/ui/protection/a;)Lcom/antivirus/ui/protection/n;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ag:Lcom/antivirus/ui/protection/n;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901db

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901dc

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/protection/e;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/protection/e;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->H()V

    return-void
.end method

.method static synthetic d(Lcom/antivirus/ui/protection/a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/ui/protection/a;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ah:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->K()V

    return-void
.end method

.method static synthetic h(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/antivirus/ui/protection/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/a;->ai:Z

    return v0
.end method

.method static synthetic j(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->M()V

    return-void
.end method

.method static synthetic k(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->N()V

    return-void
.end method

.method static synthetic l(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/protection/a;->ai:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->Y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    invoke-direct {p0}, Lcom/antivirus/ui/protection/a;->G()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ae:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v0, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->Z:Lcom/antivirus/a;

    :goto_0
    new-instance v0, Lcom/antivirus/ui/protection/b;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/protection/b;-><init>(Lcom/antivirus/ui/protection/a;)V

    sput-object v0, Lcom/antivirus/ui/protection/a;->af:Landroid/os/Handler;

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/d;->a(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/protection/FileScannerActivity;

    iget-object v0, v0, Lcom/antivirus/ui/protection/FileScannerActivity;->n:Lcom/antivirus/a;

    iput-object v0, p0, Lcom/antivirus/ui/protection/a;->Z:Lcom/antivirus/a;

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/a;->a()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/protection/f;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/f;-><init>(Lcom/antivirus/ui/protection/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/d;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/a;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/protection/a;->a(Z)V

    :cond_0
    invoke-super {p0}, Lcom/avg/ui/general/fragments/d;->e()V

    return-void
.end method
