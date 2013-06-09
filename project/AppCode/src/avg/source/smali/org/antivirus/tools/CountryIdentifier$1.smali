.class final Lorg/antivirus/tools/CountryIdentifier$1;
.super Lorg/antivirus/tools/CountryIdentifier$RunnableWithService;


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/tools/CountryIdentifier$RunnableWithService;-><init>(Landroid/app/Service;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tools/CountryIdentifier$1;->a:Landroid/app/Service;

    invoke-static {v0}, Lorg/antivirus/tools/CountryIdentifier;->a(Landroid/app/Service;)V

    return-void
.end method
