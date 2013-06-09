.class final Lorg/antivirus/tuneup/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/ar;

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/tuneup/ap;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/ap;Lorg/antivirus/tuneup/ar;I)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/aq;->c:Lorg/antivirus/tuneup/ap;

    iput-object p2, p0, Lorg/antivirus/tuneup/aq;->a:Lorg/antivirus/tuneup/ar;

    iput p3, p0, Lorg/antivirus/tuneup/aq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/tuneup/aq;->c:Lorg/antivirus/tuneup/ap;

    iget-object v1, p0, Lorg/antivirus/tuneup/aq;->a:Lorg/antivirus/tuneup/ar;

    iget v1, p0, Lorg/antivirus/tuneup/aq;->b:I

    invoke-static {v0, v1, p2}, Lorg/antivirus/tuneup/ap;->a(Lorg/antivirus/tuneup/ap;IZ)V

    return-void
.end method
