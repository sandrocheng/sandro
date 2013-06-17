.class public Lcom/avg/tuneup/a/h;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/a/c;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/avg/tuneup/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/avg/tuneup/a/h;->a:Lcom/avg/tuneup/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/tuneup/a/h;->b:Landroid/support/v4/app/Fragment;

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/tuneup/a/h;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/a/h;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/h;->b:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/avg/tuneup/a/h;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/a/h;->b:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic a(Lcom/avg/tuneup/a/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/a/h;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/avg/tuneup/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/h;->c:Ljava/lang/String;

    return-object v0
.end method
