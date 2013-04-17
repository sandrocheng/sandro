.class public Lbnd;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnd$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lsl;


# instance fields
.field private A:Landroid/widget/RatingBar;

.field private B:Landroid/widget/RatingBar;

.field private C:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/TextView;

.field private H:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private I:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private J:Z

.field private K:LQQPIM/FeatureKey;

.field private L:LQQPIM/AnalyseInfo;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:[I

.field private R:Z

.field private S:Z

.field private T:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private U:Ljava/lang/String;

.field private V:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private W:Ljava/lang/String;

.field private X:Landroid/os/Handler;

.field private Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

.field private Z:Lkv;

.field private aa:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

.field private d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private e:Landroid/widget/GridView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lals;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field private v:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbnd;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0300d4

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lbnd;->O:I

    new-array v0, v1, [I

    iput-object v0, p0, Lbnd;->Q:[I

    iput-boolean v1, p0, Lbnd;->R:Z

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lbnd;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lbnd;->T:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Lbne;

    invoke-direct {v0, p0}, Lbne;-><init>(Lbnd;)V

    iput-object v0, p0, Lbnd;->X:Landroid/os/Handler;

    new-instance v0, Lbnl;

    invoke-direct {v0, p0}, Lbnl;-><init>(Lbnd;)V

    iput-object v0, p0, Lbnd;->aa:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    return-void
.end method

.method static synthetic A(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic B(Lbnd;)LQQPIM/FeatureKey;
    .locals 1

    iget-object v0, p0, Lbnd;->K:LQQPIM/FeatureKey;

    return-object v0
.end method

.method static synthetic C(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic D(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lbnd;LQQPIM/AnalyseInfo;)LQQPIM/AnalyseInfo;
    .locals 0

    iput-object p1, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    return-object p1
.end method

.method static synthetic a(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbnd;->V:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic a(Lbnd;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Lbnd;->C:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbnd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can\'t be found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lbnd;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lbtk;->b([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;
    .locals 3

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_1
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbnd;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lbnd;->O:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbnd;->B:Landroid/widget/RatingBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    iget-object v0, p0, Lbnd;->B:Landroid/widget/RatingBar;

    iget v1, p0, Lbnd;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    iget-object v0, p0, Lbnd;->v:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbnd;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbnd;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0234

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_3

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    :cond_4
    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->getProgress()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    goto :goto_0
.end method

.method static synthetic a(Lbnd;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbnd;->a(IZ)V

    return-void
.end method

.method public static synthetic a(Lbnd;Lkw;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbno;

    invoke-direct {v1, p0, p1, p2}, Lbno;-><init>(Lbnd;Lkw;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    iput v2, v0, Llv;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    iput-object p1, v0, Llv;->d:Ljava/lang/String;

    iput v2, v0, Llv;->a:I

    iput-object p2, v0, Llv;->c:Landroid/widget/ImageView;

    new-instance v1, Lbnj;

    invoke-direct {v1}, Lbnj;-><init>()V

    iput-object v1, v0, Lmp;->i:Labu$a;

    sget-object v1, Lbnd;->c:Lsl;

    invoke-virtual {v1, v0}, Lsl;->b(Lmp;)Z

    return-void
.end method

.method private a([I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    move v1, v2

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    aget v3, p1, v1

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v5

    if-ne v3, v5, :cond_0

    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lbnd;->Z:Lkv;

    iget-object v3, v3, Lkv;->d:Lkw;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbnd;->Z:Lkv;

    iget-object v3, v3, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->k()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lbnd;->M:I

    const v5, 0x1e8484

    if-eq v3, v5, :cond_1

    move-object v1, v0

    :goto_3
    const/16 v3, 0x8

    move v6, v3

    move-object v3, v1

    move v1, v6

    :goto_4
    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    invoke-virtual {p0, v0}, Lbnd;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    move v1, v2

    move-object v3, v0

    goto :goto_4

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v1, p0, Lbnd;->Z:Lkv;

    invoke-static {v1}, Lof;->c(Lkv;)F

    move-result v1

    iput v1, v0, Lkv;->mProgress:F

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mProgress:F

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbnd;->a(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    goto :goto_0
.end method

.method static synthetic b(Lbnd;)V
    .locals 2

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnd;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lbnd;->a()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbnd;->d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    invoke-virtual {v2}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v2

    invoke-virtual {v2}, LQQPIM/SoftInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v2

    invoke-virtual {v2}, LQQPIM/SoftKey;->getVersioncode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppVersionStatus(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbnd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbnd;->Z:Lkv;

    iget-object v2, v2, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lbnd;->Z:Lkv;

    iget-object v2, v2, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v0, v3, :cond_0

    const/4 v0, -0x1

    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lbnd;->Q:[I

    invoke-direct {p0, v0}, Lbnd;->a([I)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lbnd;->Z:Lkv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget v1, v1, Lkv;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mState:I

    if-ne v0, v7, :cond_2

    new-array v0, v3, [I

    aput v4, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mState:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbnd;->Z:Lkv;

    const/4 v1, 0x3

    iput v1, v0, Lkv;->mState:I

    new-array v0, v3, [I

    aput v3, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :cond_5
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mState:I

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, v3, [I

    aput v6, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :cond_7
    new-array v0, v3, [I

    aput v5, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :pswitch_2
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :pswitch_3
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lbnd;->Q:[I

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lbnd;->Q:[I

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v3, [I

    aput v3, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lbnd;->Z:Lkv;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_8

    new-array v0, v3, [I

    aput v6, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto/16 :goto_0

    :cond_8
    new-array v0, v3, [I

    aput v5, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lbnd;->S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [I

    aput v6, v0, v4

    iput-object v0, p0, Lbnd;->Q:[I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic c(Lbnd;)V
    .locals 8

    const/16 v6, 0x37

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    iget v0, v0, LQQPIM/AnalyseInfo;->softState:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0586

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbnd;->setEmptyText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbnd;->hideEmptyView()V

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v1

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    iget-object v0, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    invoke-virtual {v0}, LQQPIM/CloudCheck;->getSafeType()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lbnd;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lbnd;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0199

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbnd;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020316

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbnd;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget v0, v1, LQQPIM/SoftInfo;->official:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lbnd;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lbnd;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    const v3, 0x7f0b019a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbnd;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbnd;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lbnd;->A:Landroid/widget/RatingBar;

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getScore()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getSuser()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lbnd;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getDownloadtimes()I

    move-result v3

    invoke-static {v2, v3}, Lk;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->e()I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lbnd;->o:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/SoftInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    invoke-virtual {v2}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v2

    invoke-virtual {v2}, LQQPIM/SoftInfo;->getFunction()Ljava/lang/String;

    move-result-object v2

    iput-object v0, p0, Lbnd;->U:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbnd;->U:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbnd;->U:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lbnd;->U:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v6, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbnd;->U:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbnd;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lbnd;->J:Z

    :goto_1
    iget-object v2, p0, Lbnd;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    iget-object v2, p0, Lbnd;->l:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0616

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getFilesize()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_b

    const-string v0, "0"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const-string v0, ""

    iget-object v2, p0, Lbnd;->Z:Lkv;

    iget-object v2, v2, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbnd;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0615

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/SoftKey;->getNewest_version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->C()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {v1}, LQQPIM/SoftInfo;->getPublishtime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lbnd;->p:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0617

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getPublishtime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lbnd;->W:Ljava/lang/String;

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getNick_name()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v1, p0, Lbnd;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lbnd;->W:Ljava/lang/String;

    :goto_3
    iget-object v0, p0, Lbnd;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lbnd;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbnd;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lbnd;->U:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lbnd;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v2

    invoke-virtual {v2}, LQQPIM/SoftKey;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/SoftKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbnd;->W:Ljava/lang/String;

    goto :goto_3
.end method

.method static synthetic d(Lbnd;)V
    .locals 7

    const v5, 0x7f080294

    const/high16 v6, 0x3f00

    const/4 v3, 0x0

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v0

    iget-object v1, p0, Lbnd;->Z:Lkv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v0}, LQQPIM/SoftInfo;->getLogourl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkw;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lbnd;->Z:Lkv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v0}, LQQPIM/SoftInfo;->getLogourl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkw;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, LQQPIM/SoftInfo;->getLogourl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v2}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    iget-object v2, p0, Lbnd;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lbnd;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, LQQPIM/SoftInfo;->getPicurls()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, LQQPIM/SoftInfo;->getSrcpicurls()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lbnd;->b:Ljava/util/List;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lbnd;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lbnd;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbnd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v3

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lbnd;->a:Ljava/util/List;

    iget-object v5, p0, Lbnd;->g:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x7d

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x4348

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget-object v5, p0, Lbnd;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lbnd;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lbnd;->e:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lbnd;->e:Landroid/widget/GridView;

    iget-object v1, p0, Lbnd;->h:Lals;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbnd;->h:Lals;

    sget-object v1, Lbnd;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lals;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbnd;->h:Lals;

    invoke-virtual {v0}, Lals;->notifyDataSetChanged()V

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v6}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v5, Llv;

    invoke-direct {v5}, Llv;-><init>()V

    iput v3, v5, Llv;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lmp;->g:I

    iput-object v0, v5, Llv;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, v5, Llv;->a:I

    const/4 v0, 0x0

    iput-object v0, v5, Llv;->c:Landroid/widget/ImageView;

    new-instance v0, Lbnk;

    invoke-direct {v0, p0}, Lbnk;-><init>(Lbnd;)V

    iput-object v0, v5, Lmp;->i:Labu$a;

    sget-object v0, Lbnd;->c:Lsl;

    invoke-virtual {v0, v5}, Lsl;->b(Lmp;)Z

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    invoke-virtual {p0, v5}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v0, ""

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    iget-object v1, p0, Lbnd;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lbnd;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_5
    return-void
.end method

.method private d()Z
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    const v3, 0x7f0b088a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    invoke-static {}, La;->b()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    const v3, 0x7f0b088d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic e(Lbnd;)V
    .locals 0

    invoke-direct {p0}, Lbnd;->b()V

    return-void
.end method

.method private e()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lbnd;->d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v3, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v3}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    invoke-virtual {v4}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v4

    invoke-virtual {v4}, LQQPIM/SoftInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v4

    invoke-virtual {v4}, LQQPIM/SoftKey;->getVersioncode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppVersionStatus(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lbnd;->Z:Lkv;

    iget v2, v2, Lkv;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lbnd;->Z:Lkv;

    invoke-static {v2}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbnd;->d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v5, 0x4d

    invoke-virtual {v4, v3, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    iget-object v2, p0, Lbnd;->Z:Lkv;

    iget-object v2, v2, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lov;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v2, p0, Lbnd;->Z:Lkv;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->deleteTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;Z)V

    iget-object v1, p0, Lbnd;->Z:Lkv;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lkv;->mCurrentSize:J

    iget-object v1, p0, Lbnd;->Z:Lkv;

    const/4 v2, 0x0

    iput v2, v1, Lkv;->mProgress:F

    iget-object v1, p0, Lbnd;->Z:Lkv;

    const/4 v2, -0x2

    iput v2, v1, Lkv;->mState:I

    invoke-direct {p0}, Lbnd;->c()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lbnd;->Z:Lkv;

    invoke-static {v0}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lbnd;->d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    const v1, 0x7f0b088e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic f(Lbnd;)V
    .locals 0

    invoke-direct {p0}, Lbnd;->c()V

    return-void
.end method

.method static synthetic g(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lbnd;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbnd;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbnd;)V
    .locals 0

    invoke-direct {p0}, Lbnd;->a()V

    return-void
.end method

.method static synthetic k(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbnd;->C:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic m(Lbnd;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lbnd;->Q:[I

    invoke-direct {p0, v0}, Lbnd;->a([I)V

    return-void

    :pswitch_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lbnd;->Q:[I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static synthetic n(Lbnd;)Lkv;
    .locals 1

    iget-object v0, p0, Lbnd;->Z:Lkv;

    return-object v0
.end method

.method static synthetic o(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;
    .locals 1

    iget-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    return-object v0
.end method

.method static synthetic p(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lbnd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbnd;->X:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lbnd;)V
    .locals 5

    iget-object v0, p0, Lbnd;->d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Z)Lkw;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getSoftName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setAppName(Ljava/lang/String;)V

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lkw;->i(I)V

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setCertMD5(Ljava/lang/String;)V

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getFileSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lkw;->setSize(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkw;->e(I)V

    :goto_0
    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->D()I

    move-result v1

    invoke-virtual {v0}, Lkw;->D()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->n()I

    move-result v0

    invoke-virtual {v1, v0}, Lkw;->e(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v2}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "label_soft_score"

    const-string v4, "soft_score.sdb"

    invoke-static {v0, v3, v4}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftScore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LQQPIM/SoftScore;->getScore()I

    move-result v0

    :goto_2
    iput v0, p0, Lbnd;->O:I

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lkw;->e(I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lkv;

    invoke-direct {v1, v0}, Lkv;-><init>(Lkw;)V

    iput-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v1, p0, Lbnd;->M:I

    iput v1, v0, Lkv;->b:I

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v1, p0, Lbnd;->N:I

    iput v1, v0, Lkv;->c:I

    iget-object v0, p0, Lbnd;->Z:Lkv;

    invoke-static {v0}, Lof;->a(Lkv;)V

    goto :goto_1
.end method

.method static synthetic s(Lbnd;)V
    .locals 5

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    const/4 v2, 0x5

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, LQQPIM/SoftFeature;

    invoke-direct {v3}, LQQPIM/SoftFeature;-><init>()V

    iget-object v4, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v3, v4}, LQQPIM/SoftFeature;->setFeatureKey(LQQPIM/FeatureKey;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, LQQPIM/SoftFeature;->setRequestType(I)V

    iget v4, p0, Lbnd;->M:I

    invoke-virtual {v3, v4}, LQQPIM/SoftFeature;->setCategory(I)V

    iget v4, p0, Lbnd;->P:I

    invoke-virtual {v3, v4}, LQQPIM/SoftFeature;->setAppid(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lbni;

    invoke-direct {v3, p0}, Lbni;-><init>(Lbnd;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchAnalyseInfo(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    return-void
.end method

.method static synthetic t(Lbnd;)LQQPIM/AnalyseInfo;
    .locals 1

    iget-object v0, p0, Lbnd;->L:LQQPIM/AnalyseInfo;

    return-object v0
.end method

.method static synthetic u(Lbnd;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnd;->S:Z

    return v0
.end method

.method static synthetic v(Lbnd;)Lals;
    .locals 1

    iget-object v0, p0, Lbnd;->h:Lals;

    return-object v0
.end method

.method static synthetic w(Lbnd;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
    .locals 1

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    return-object v0
.end method

.method static synthetic x(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic y(Lbnd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z(Lbnd;)I
    .locals 1

    iget v0, p0, Lbnd;->O:I

    return v0
.end method


# virtual methods
.method protected createOperatingBarDataList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnd;->D:Ljava/util/List;

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x0

    const v3, 0x7f0b0319

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x1

    const v3, 0x7f0b000e

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x2

    const v3, 0x7f0b044e

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x3

    const v3, 0x7f0b03fb

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x4

    const v3, 0x7f0b03e9

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x5

    const v3, 0x7f0b0059

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x6

    const v3, 0x7f0b03eb

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x7

    const v3, 0x7f0b004a

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b0908

    invoke-direct {v1, v4, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbnd;->D:Ljava/util/List;

    return-object v0
.end method

.method public onBackClick()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/ProfessionalKillerListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lbnd;->X:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbnd;->X:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbng;

    invoke-direct {v1, p0}, Lbng;-><init>(Lbnd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_1
    iget-boolean v2, p0, Lbnd;->J:Z

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lbnd;->J:Z

    iget-boolean v0, p0, Lbnd;->J:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbnd;->U:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnd;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lbnd;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lbnd;->G:Landroid/widget/TextView;

    const v1, 0x7f0b031f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbnd;->F:Landroid/widget/ImageView;

    const v1, 0x7f020217

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbnd;->U:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbnd;->U:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x37

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lbnd;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbnd;->U:Ljava/lang/String;

    const/16 v4, 0x37

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lbnd;->G:Landroid/widget/TextView;

    const v1, 0x7f0b031e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbnd;->F:Landroid/widget/ImageView;

    const v1, 0x7f020216

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :sswitch_2
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0285

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0286

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0287

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0288

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0289

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p0, Lbnd;->mContext:Landroid/content/Context;

    const v5, 0x7f0b028a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LQQPIM/EIllegaReason;->IR_InvalidDownLoad:LQQPIM/EIllegaReason;

    invoke-virtual {v5}, LQQPIM/EIllegaReason;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LQQPIM/EIllegaReason;->IR_InvalidInstall:LQQPIM/EIllegaReason;

    invoke-virtual {v4}, LQQPIM/EIllegaReason;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/EIllegaReason;->IR_Pay:LQQPIM/EIllegaReason;

    invoke-virtual {v1}, LQQPIM/EIllegaReason;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/EIllegaReason;->IR_Virus:LQQPIM/EIllegaReason;

    invoke-virtual {v1}, LQQPIM/EIllegaReason;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/EIllegaReason;->IR_WrongInfo:LQQPIM/EIllegaReason;

    invoke-virtual {v1}, LQQPIM/EIllegaReason;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LQQPIM/EIllegaReason;->IR_NeedUpdate:LQQPIM/EIllegaReason;

    invoke-virtual {v4}, LQQPIM/EIllegaReason;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const v4, 0x7f0b028c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lfb;

    invoke-direct {v4, p0, v3}, Lfb;-><init>(Lbnd;[Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v1, v4}, La;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lfb;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lbnd;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/ShareActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lbnd;->K:LQQPIM/FeatureKey;

    if-eqz v3, :cond_4

    const-string v3, "default_content"

    iget-object v4, p0, Lbnd;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0aa6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v5}, LQQPIM/FeatureKey;->getSoftName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v0, "from_where"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "default_content"

    iget-object v4, p0, Lbnd;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0aa6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08028e -> :sswitch_0
        0x7f080299 -> :sswitch_1
        0x7f08029d -> :sswitch_2
        0x7f08029e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    return-void
.end method

.method public onCreate()V
    .locals 15

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Lbnd;->getImageLoaderService()Lsl;

    move-result-object v0

    sput-object v0, Lbnd;->c:Lsl;

    const v0, 0x7f08019f

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbnd;->i:Landroid/widget/ImageView;

    new-instance v0, Lals;

    sget-object v1, Lbnd;->a:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lals;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/util/List;)V

    iput-object v0, p0, Lbnd;->h:Lals;

    const v0, 0x7f080292

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbnd;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f080293

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lbnd;->e:Landroid/widget/GridView;

    iget-object v0, p0, Lbnd;->e:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020313

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lbnd;->g:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080284

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->j:Landroid/widget/TextView;

    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->k:Landroid/widget/TextView;

    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->l:Landroid/widget/TextView;

    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->p:Landroid/widget/TextView;

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->m:Landroid/widget/TextView;

    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->n:Landroid/widget/TextView;

    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->o:Landroid/widget/TextView;

    const v0, 0x7f08029c

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->q:Landroid/widget/TextView;

    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->r:Landroid/widget/TextView;

    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbnd;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f08029a

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbnd;->F:Landroid/widget/ImageView;

    const v0, 0x7f08029b

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->G:Landroid/widget/TextView;

    const v0, 0x7f08028a

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, p0, Lbnd;->u:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const v0, 0x7f08029d

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbnd;->H:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08029e

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbnd;->I:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbnd;->H:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbnd;->I:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08028e

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbnd;->v:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbnd;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbnd;->x:Landroid/widget/LinearLayout;

    const v0, 0x7f08028b

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbnd;->y:Landroid/widget/LinearLayout;

    const v0, 0x7f08028f

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbnd;->z:Landroid/widget/LinearLayout;

    const v0, 0x7f080286

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lbnd;->A:Landroid/widget/RatingBar;

    const v0, 0x7f08028c

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lbnd;->B:Landroid/widget/RatingBar;

    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnd;->s:Landroid/widget/TextView;

    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Lbnd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbnd;->t:Landroid/widget/ImageView;

    iget-object v0, p0, Lbnd;->v:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbnd;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbnd;->B:Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbnd;->V:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbnd;->V:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbnd;->V:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbnd;->V:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    invoke-virtual {p0}, Lbnd;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v0, "key_category_id"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbnd;->M:I

    const-string v0, "key_pos"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbnd;->N:I

    const-string v0, "key_appid"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbnd;->P:I

    new-instance v0, LQQPIM/FeatureKey;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lbnd;->K:LQQPIM/FeatureKey;

    new-instance v7, LQQPIM/FeatureKey;

    const-string v0, "key_pkg_name"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, ""

    :cond_0
    const-string v0, "key_soft_name"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v9, ""

    :cond_1
    const-string v0, "key_soft_version"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    const-string v0, "key_soft_version_code"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "key_cert_md5"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    const-string v12, ""

    :cond_3
    const-string v0, "key_apk_size"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v13, v0

    invoke-direct/range {v7 .. v13}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v7, p0, Lbnd;->K:LQQPIM/FeatureKey;

    iget-object v0, p0, Lbnd;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0615

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v2}, LQQPIM/FeatureKey;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbnd;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0616

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v2}, LQQPIM/FeatureKey;->getFileSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, La;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbnd;->v:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0613

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    const-string v0, "key_publish_time"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbnd;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbnd;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0617

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "key_publish_time"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v0, "key_category_id"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x2dc6c0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lbnd;->q:Landroid/widget/TextView;

    const-string v1, "key_source_content"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbnd;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lbnd;->d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Lbnd;->T:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v0, p0, Lbnd;->K:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iget-object v1, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lof;->a(Ljava/lang/String;Ljava/util/List;)Lkv;

    move-result-object v0

    iput-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, p0, Lbnd;->Z:Lkv;

    if-nez v0, :cond_6

    iget-object v0, p0, Lbnd;->K:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-static {v0}, Lof;->a(Ljava/lang/String;)Lkv;

    move-result-object v0

    iput-object v0, p0, Lbnd;->Z:Lkv;

    :cond_6
    iget-object v0, p0, Lbnd;->Z:Lkv;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbnd;->K:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbnd;->K:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    iget-object v1, p0, Lbnd;->Z:Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->D()I

    move-result v0

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    iget v1, v1, LQQPIM/FeatureKey;->versionCode:I

    if-ge v0, v1, :cond_8

    :cond_7
    new-instance v0, Lkv;

    invoke-direct {v0}, Lkv;-><init>()V

    iput-object v0, p0, Lbnd;->Z:Lkv;

    :cond_8
    iget-object v0, p0, Lbnd;->Z:Lkv;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbnd$a;

    invoke-direct {v1, p0, v6}, Lbnd$a;-><init>(Lbnd;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    const-class v0, Lof;

    iget-object v1, p0, Lbnd;->T:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbnd;->T:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {}, Lof;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lof;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 10

    const/4 v4, 0x0

    const v9, 0x7f0b0036

    const v8, 0x7f0b0033

    const/4 v7, 0x1

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lbnd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v0, v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    iget-object v2, p0, Lbnd;->Z:Lkv;

    iget-object v2, v2, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getSize()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbnd;->Z:Lkv;

    iput-boolean v4, v0, Lkv;->isOnChangeRetry:Z

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lbnd;->Z:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lbnd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbnd;->f()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lbnd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget v0, v0, Lkv;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbnd;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lbnd;->f()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v0, v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    iget-object v2, p0, Lbnd;->Z:Lkv;

    iget-object v2, v2, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getSize()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lbnd;->Z:Lkv;

    iput-boolean v4, v0, Lkv;->isOnChangeRetry:Z

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lbnd;->Z:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lbnd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iput-boolean v4, v0, Lkv;->isOnChangeRetry:Z

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lbnd;->Z:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lbnd;->d:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lbnd;->Z:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->pauseTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0452

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbnd;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0045

    new-instance v2, Lbnm;

    invoke-direct {v2, p0, v0}, Lbnm;-><init>(Lbnd;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Lbnn;

    invoke-direct {v1, v0}, Lbnn;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v8, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lbnd;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    iget-object v0, p0, Lbnd;->Z:Lkv;

    iget-object v2, v0, Lkv;->d:Lkw;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lfy;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_4
    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0452

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b074a

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0498

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v3, Lgr;

    invoke-direct {v3, v1, v2, v0}, Lgr;-><init>(Landroid/app/Activity;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v9, v3, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Lgs;

    invoke-direct {v1, v0}, Lgs;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v8, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lkw;->e()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0732

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b0733

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b0734

    new-instance v4, Lgt;

    invoke-direct {v4, v0}, Lgt;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v3, v4, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v3, Lgg;

    invoke-direct {v3, v1, v2, v0}, Lgg;-><init>(Landroid/app/Activity;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v9, v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lkw;->e()I

    move-result v0

    if-ne v0, v7, :cond_7

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0732

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300e0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v3, Lgi;

    invoke-direct {v3, v1, v2, v0}, Lgi;-><init>(Landroid/app/Activity;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v9, v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Lgj;

    invoke-direct {v1, v0}, Lgj;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v8, v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lkw;->e()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0732

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0300e0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0802cc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080097

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f0b073b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v0, Lgk;

    invoke-direct {v0, v1, v2, v3}, Lgk;-><init>(Landroid/app/Activity;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v3, v9, v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lgl;

    invoke-direct {v0, v3}, Lgl;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v3, v8, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnd;->v:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbnd;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbnd;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lbnd;->v:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iput v0, p0, Lbnd;->O:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lbnd;->X:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbnd;->X:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRetry()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbnd$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbnd$a;-><init>(Lbnd;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onSDCardUnmounted()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onSDCardUnmounted()V

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->pauseTask(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lbnd;->aa:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    iget-boolean v0, p0, Lbnd;->R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbnd;->R:Z

    invoke-direct {p0}, Lbnd;->c()V

    invoke-direct {p0}, Lbnd;->b()V

    :cond_0
    const v0, 0x7f0b02b4

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    iget-object v0, p0, Lbnd;->Y:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lbnd;->aa:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnd;->R:Z

    return-void
.end method

.method protected subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    iget-object v0, p0, Lbnd;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnd;->W:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void

    :cond_0
    iget-object v0, p0, Lbnd;->K:LQQPIM/FeatureKey;

    invoke-virtual {v0}, LQQPIM/FeatureKey;->getSoftName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    goto :goto_0
.end method
