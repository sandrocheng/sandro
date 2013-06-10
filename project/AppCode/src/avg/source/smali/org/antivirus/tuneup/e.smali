.class final Lorg/antivirus/tuneup/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/InstalledApp;

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/tuneup/b;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/b;Lorg/antivirus/ui/InstalledApp;I)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/e;->c:Lorg/antivirus/tuneup/b;

    iput-object p2, p0, Lorg/antivirus/tuneup/e;->a:Lorg/antivirus/ui/InstalledApp;

    iput p3, p0, Lorg/antivirus/tuneup/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/tuneup/e;->c:Lorg/antivirus/tuneup/b;

    iget-object v1, p0, Lorg/antivirus/tuneup/e;->a:Lorg/antivirus/ui/InstalledApp;

    iget-object v1, v1, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/e;->c:Lorg/antivirus/tuneup/b;

    invoke-static {v0}, Lorg/antivirus/tuneup/b;->a(Lorg/antivirus/tuneup/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/StorageActivity;

    check-cast v0, Lorg/antivirus/tuneup/StorageActivity;

    iget v1, p0, Lorg/antivirus/tuneup/e;->b:I

    iput v1, v0, Lorg/antivirus/tuneup/StorageActivity;->b:I

    iget-object v0, p0, Lorg/antivirus/tuneup/e;->c:Lorg/antivirus/tuneup/b;

    invoke-static {v0}, Lorg/antivirus/tuneup/b;->a(Lorg/antivirus/tuneup/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage_usage"

    const-string v2, "show_app_details"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
