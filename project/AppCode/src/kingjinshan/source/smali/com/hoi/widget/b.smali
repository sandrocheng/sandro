.class final Lcom/hoi/widget/b;
.super Ljava/lang/Object;
.source "BinaryPicker.java"

# interfaces
.implements Lcom/hoi/widget/aa;


# instance fields
.field final synthetic a:Lcom/hoi/widget/BinaryPicker;


# direct methods
.method constructor <init>(Lcom/hoi/widget/BinaryPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/hoi/widget/b;->a:Lcom/hoi/widget/BinaryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hoi/widget/b;->a:Lcom/hoi/widget/BinaryPicker;

    invoke-static {v0, p1}, Lcom/hoi/widget/BinaryPicker;->b(Lcom/hoi/widget/BinaryPicker;I)I

    .line 73
    iget-object v0, p0, Lcom/hoi/widget/b;->a:Lcom/hoi/widget/BinaryPicker;

    invoke-static {v0}, Lcom/hoi/widget/BinaryPicker;->a(Lcom/hoi/widget/BinaryPicker;)Lcom/hoi/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/hoi/widget/b;->a:Lcom/hoi/widget/BinaryPicker;

    invoke-static {v0}, Lcom/hoi/widget/BinaryPicker;->a(Lcom/hoi/widget/BinaryPicker;)Lcom/hoi/widget/c;

    iget-object v0, p0, Lcom/hoi/widget/b;->a:Lcom/hoi/widget/BinaryPicker;

    iget-object v0, p0, Lcom/hoi/widget/b;->a:Lcom/hoi/widget/BinaryPicker;

    invoke-static {v0}, Lcom/hoi/widget/BinaryPicker;->b(Lcom/hoi/widget/BinaryPicker;)I

    iget-object v0, p0, Lcom/hoi/widget/b;->a:Lcom/hoi/widget/BinaryPicker;

    invoke-static {v0}, Lcom/hoi/widget/BinaryPicker;->c(Lcom/hoi/widget/BinaryPicker;)I

    .line 77
    :cond_0
    return-void
.end method
