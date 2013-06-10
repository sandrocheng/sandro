.class final Lorg/antivirus/tuneup/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/ac;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    iget-object v1, p0, Lorg/antivirus/tuneup/ac;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v1, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v0, p0, Lorg/antivirus/tuneup/ac;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Lorg/antivirus/tuneup/ap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ap;->notifyDataSetChanged()V

    return-void
.end method
