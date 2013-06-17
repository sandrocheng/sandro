.class final Lcom/antivirus/widget/appbackup/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;
    .locals 1

    new-instance v0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;

    invoke-direct {v0, p1}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;
    .locals 1

    new-array v0, p1, [Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/widget/appbackup/a;->a(Landroid/os/Parcel;)Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/widget/appbackup/a;->a(I)[Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;

    move-result-object v0

    return-object v0
.end method
