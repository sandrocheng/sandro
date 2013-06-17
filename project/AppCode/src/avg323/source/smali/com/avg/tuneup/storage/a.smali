.class Lcom/avg/tuneup/storage/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/avg/tuneup/storage/StorageActivity;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/storage/StorageActivity;[I)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/storage/a;->b:Lcom/avg/tuneup/storage/StorageActivity;

    iput-object p2, p0, Lcom/avg/tuneup/storage/a;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/storage/a;->b:Lcom/avg/tuneup/storage/StorageActivity;

    iget-object v0, v0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    iget-object v1, p0, Lcom/avg/tuneup/storage/a;->a:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/storage/b;->b(I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
