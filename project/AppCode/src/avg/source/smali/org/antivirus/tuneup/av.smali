.class final Lorg/antivirus/tuneup/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/StorageActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/StorageActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/av;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/av;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v0, p2}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/tuneup/StorageActivity;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
