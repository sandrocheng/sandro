.class final Lorg/antivirus/tuneup/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/t;

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/tuneup/q;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/q;Lorg/antivirus/tuneup/t;I)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/r;->c:Lorg/antivirus/tuneup/q;

    iput-object p2, p0, Lorg/antivirus/tuneup/r;->a:Lorg/antivirus/tuneup/t;

    iput p3, p0, Lorg/antivirus/tuneup/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/tuneup/r;->c:Lorg/antivirus/tuneup/q;

    iget-object v1, p0, Lorg/antivirus/tuneup/r;->a:Lorg/antivirus/tuneup/t;

    iget v2, p0, Lorg/antivirus/tuneup/r;->b:I

    invoke-static {v0, v1, v2, p2}, Lorg/antivirus/tuneup/q;->a(Lorg/antivirus/tuneup/q;Lorg/antivirus/tuneup/t;IZ)V

    return-void
.end method
