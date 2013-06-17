.class Lcom/avg/tuneup/taskkiller/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/avg/tuneup/taskkiller/TaskKillerActivity;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/TaskKillerActivity;[I)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/c;->b:Lcom/avg/tuneup/taskkiller/TaskKillerActivity;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/c;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/c;->b:Lcom/avg/tuneup/taskkiller/TaskKillerActivity;

    invoke-virtual {v0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->middle_part:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/n;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/c;->a:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/taskkiller/n;->b(I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
