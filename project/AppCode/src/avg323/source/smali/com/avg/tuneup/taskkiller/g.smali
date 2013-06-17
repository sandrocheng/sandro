.class Lcom/avg/tuneup/taskkiller/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/taskkiller/e;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/e;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/g;->a:Lcom/avg/tuneup/taskkiller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
